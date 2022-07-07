<?php
 if(!isset($_SESSION["project"]) || $_SESSION["project"] !== true){
    header("location: index");
    exit;
}
require_once('Nav.php');
class  Upload{

    private  $db;
    private $err;
    private $dataarr;
    private $fullarr =[];
    public function __construct(){
      $this->db = Database::config();
    }

    private  function  storelogfile($data){
        $servername =  Form::post('servername');
        $upfname =  isset($_FILES['upfname']['name']) ? $_FILES['upfname']['name']  : "";
        $upftime =  date("Y-m-d h:i:sa");
        $uploaderr = true;
        if(isset($_FILES['upfname']['name']) &&  strlen($_FILES['upfname']['name']) > 1){
            $extension = substr(strrchr($_FILES['upfname']["name"], '.'), 1);
            if($extension != "log" &&  $extension != "text"){   
                echo  '<script>notifyError("Invalid File Format Only log and text are allowed")</script>';
                $uploaderr = false;
            }else{
                $target_file = BASE_DIR_DATA.DS.$_FILES['upfname']['name'];
                move_uploaded_file($_FILES["upfname"]["tmp_name"], $target_file);
                $uploaderr = true;
            }
        }
        $sub_name =   isset($_SESSION["username"]) ?   $_SESSION["username"] : "Parthiban";
        $sql = "INSERT INTO updetails(upftype,upfname,upftime,sub_name) values(:upftype,:upfname,:upftime,:sub_name)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(":upftype", $servername, PDO::PARAM_STR);
        $stmt->bindParam(":upfname", $upfname, PDO::PARAM_STR);
        $stmt->bindParam(":upftime", $upftime, PDO::PARAM_STR);
        $stmt->bindParam(":sub_name", $sub_name, PDO::PARAM_STR);
        try{  
        if($uploaderr){
            $stmt->execute();
            $result =  $this->db->lastInsertId();
            return $result;
        }else{
            echo  '<script>notifyError("File Not Saved Please Reupload the File")</script>';
        }
        } catch (PDOException $e){
            echo  '<script>notifyError("'.$e->getMessage().'")</script>';
            return false;
        }
    }

    public function readlogfiletwo(){
        $log_file = isset($_FILES) ?  $_FILES['upfname']['tmp_name']  : "";
        $data = file($log_file,FILE_IGNORE_NEW_LINES);
        $sdata = $this->splitlogfile($data);
        $mdata =  $this->mergedata($sdata);
        $gdata  = $this-> generate_object();
        return $gdata;
      //  var_dump($this->fullarr);
       // var_dump($gdata);
        
       
    }   
    
    private function generate_object(){
        $ldata = [];
        foreach($this->fullarr as $finaldata){
          if(count($finaldata)==12){
            $obj = new stdclass();
            $obj->cdate =  $finaldata[0];
            $splitdata  =  explode(",",$finaldata[1]);
            $obj->ctime =  $splitdata[0];
            $obj->logid =  $splitdata[1];
            $obj->loglevel = $finaldata[2];
            $obj->cacert = preg_replace("/[^a-zA-Z]+/", "",$finaldata[3]);
            $daemon = $finaldata[4].$finaldata[5].$finaldata[6].$finaldata[7];
            $obj->daemon =   trim($daemon,"()");
            $obj->servername = preg_replace("/[^a-zA-Z]+/", "",$finaldata[4]);
            $obj->remarks =  "";
            for($i=8;$i<count($finaldata);$i++){
                $obj->remarks .= $finaldata[$i];
            }
            $obj->DN = "Nil";
            $obj->identifiedby = "Nil";
            $obj->fetchedby = "Nil";
            $obj->hashstring= "Nil";
            $obj->CN= "Nil";
            $obj->O= "Nil";
            $obj->L= "Nil";
            $obj->ST= "Nil";
            $obj->C= "Nil";
          }elseif((isset($finaldata[18]) && strlen($finaldata[18])==57) || (isset($finaldata[19]) && strlen($finaldata[19]) > 50)){
            $obj = new stdclass();
            $obj->cdate =  $finaldata[0];
            $splitdata  =  explode(",",$finaldata[1]);
            $obj->ctime =  $splitdata[0];
            $obj->logid =  $splitdata[1];
            $obj->loglevel = $finaldata[2];
            $obj->cacert = preg_replace("/[^a-zA-Z]+/", "",$finaldata[3]);
            $daemon = $finaldata[4].$finaldata[5].$finaldata[6].$finaldata[7];
            $obj->daemon =   trim($daemon,"()");
            $obj->servername = preg_replace("/[^a-zA-Z]+/", "",$finaldata[4]);
            $obj->remarks =  "Nil";
            $obj->DN =  preg_replace("/[^a-zA-Z]+/", "",$finaldata[13].strlen($finaldata[14]) > 10 ? $finaldata[14] : "");
            $obj->identifiedby = "Nil";
            $obj->fetchedby = "Y";
            if(strlen($finaldata[18]) > 50){
                $obj->hashstring= $finaldata[18];
            }else{
                $obj->hashstring= $finaldata[19];
            }
            $obj->CN= "Nil";
            $obj->O= "Nil";
            $obj->L= "Nil";
            $obj->ST= "Nil";
            $obj->C= "Nil";
          }elseif((isset($finaldata[18]) && strlen($finaldata[18])==37) || (isset($finaldata[17]) && strlen($finaldata[17]) == 37)){
            $obj = new stdclass();
            $obj->cdate =  $finaldata[0];
            $splitdata  =  explode(",",$finaldata[1]);
            $obj->ctime =  $splitdata[0];
            $obj->logid =  $splitdata[1];
            $obj->loglevel = $finaldata[2];
            $obj->cacert = preg_replace("/[^a-zA-Z]+/", "",$finaldata[3]);
            $daemon = $finaldata[4].$finaldata[5].$finaldata[6].$finaldata[7];
            $obj->daemon =   trim($daemon,"()");
            $obj->servername = preg_replace("/[^a-zA-Z]+/", "",$finaldata[4]);
            $obj->remarks =  "Nil";
            $obj->DN =  preg_replace("/[^a-zA-Z]+/", "",$finaldata[13].strlen($finaldata[14]) > 10 ? $finaldata[14] : "");
            $obj->identifiedby = "Y";
            $obj->fetchedby = "Nil";
            if(strlen($finaldata[18]) == 37){
                $obj->hashstring= $finaldata[18];
            }else{
                $obj->hashstring= $finaldata[17];
            }
            $obj->CN= "Nil";
            $obj->O= "Nil";
            $obj->L= "Nil";
            $obj->ST= "Nil";
            $obj->C= "Nil";
          }elseif((isset($finaldata[15]) && strlen($finaldata[14])>50)){
            $obj = new stdclass();
            $obj->cdate =  $finaldata[0];
            $splitdata  =  explode(",",$finaldata[1]);
            $obj->ctime =  $splitdata[0];
            $obj->logid =  $splitdata[1];
            $obj->loglevel = $finaldata[2];
            $obj->cacert = preg_replace("/[^a-zA-Z]+/", "",$finaldata[3]);
            $daemon = $finaldata[4].$finaldata[5].$finaldata[6].$finaldata[7];
            $obj->daemon =   trim($daemon,"()");
            $obj->servername = preg_replace("/[^a-zA-Z]+/", "",$finaldata[4]);
           // var_dump($finaldata);
            $obj->remarks =  "";
            for($i=8;$i<count($finaldata);$i++){
                if(strlen($finaldata[$i] <= 1)){
                    break;
                }
                $obj->remarks .= $finaldata[$i];
            }
            $obj->DN = "Nil";
            $obj->identifiedby = "Nil";
            $obj->fetchedby = "Nil";
            $obj->hashstring= "Nil";
            $data1 =  explode(",",$finaldata[14]);
            $data2 =  explode(",",$finaldata[15]);
            $data3 =  explode(",",$finaldata[16]);
            if(isset($data1[0])  && !(isset($data2[0])) && !(isset($data3[0]))){ $cn  = $data1[0]; }elseif(isset($data1[0]) && isset($data2[0])  && !(isset($data3[0]))){ $cn  = $data1[0].",".$data2[0]; }elseif(isset($data1[0]) && isset($data2[0]) && isset($data3[0])){$cn  = $data1[0].",".$data2[0].",".$data3[0];}
            if(isset($data1[1])  && !(isset($data2[1])) && !(isset($data3[1]))){$o  = $data1[1];}elseif(isset($data1[1]) && isset($data2[1])  && !(isset($data3[1]))){$o  = $data1[1].",".$data2[1];}elseif(isset($data1[1]) && isset($data2[1]) && isset($data3[1])){$o  = $data1[1].",".$data2[1].",".$data3[1];}
            if(isset($data1[2])  && !(isset($data2[2])) && !(isset($data3[2]))){$l  = $data1[2];}elseif(isset($data1[2]) && isset($data2[2])  && !(isset($data3[2]))){$l  = $data1[2].",".$data2[2];}elseif(isset($data1[2]) && isset($data2[2]) && isset($data3[2])){$l  = $data1[2].",".$data2[2].",".$data3[2];}
            if(isset($data1[3])  && !(isset($data2[3])) && !(isset($data3[3]))){$st  = $data1[3];}elseif(isset($data1[3]) && isset($data2[3])  && !(isset($data3[3]))){$st  = $data1[3].",".$data2[3];}elseif(isset($data1[3]) && isset($data2[3]) && isset($data3[3])){$st  = $data1[3].",".$data2[3].",".$data3[3];}
            $obj->CN= str_replace("CN=","",$cn);
            $obj->O= str_replace("O=","",$o);
            $obj->L=str_replace("L=","",$l);
            $obj->ST= str_replace("ST=","",$st);
            $C= $data1[4].",".$data1[5].",".$data2[4].",".$data2[5];  
            $obj->C =  str_replace("C=","",$C);
          }
          else{
            var_dump($finaldata);
          }
        //   elseif(count($finaldata)==24 && strlen($finaldata[11]) == 23){
        //     $obj->remarks =  "Nil";
        //     $obj->DN =  preg_replace("/[^a-zA-Z]+/", "",$finaldata[13].strlen($finaldata[14]) > 10 ? $finaldata[14] : "");
        //     $obj->identifiedby = "Nil";
        //     $obj->fetchedby = "Y";
        //     $obj->hashstring= $finaldata[18];
        //     $obj->CN= "Nil";
        //     $obj->O= "Nil";
        //     $obj->L= "Nil";
        //     $obj->ST= "Nil";
        //     $obj->C= "Nil";
        //   }
          array_push($ldata,$obj);
        }
       // var_dump($ldata);
        return $ldata;

    }

    private function mergedata($sdata){
        foreach($sdata as $data){
            if(strlen($data[0])==10 && (isset($data[1]) && strlen($data[1]) == 12)){
                if(is_array($this->dataarr) && count($this->dataarr) > 0 ){
                    array_push($this->fullarr,$this->dataarr);
                }
                $this->dataarr  = [];
                for($i=0;$i<count($data);$i++){
                    array_push($this->dataarr,$data[$i]);
                }
            }else{
                for($i=0;$i<count($data);$i++){
                    array_push($this->dataarr,$data[$i]);
                }
            }
        }
    }

    private function splitlogfile($data){
        $arr = [];
        foreach($data as $fdata){
            array_push($arr,explode(" ",$fdata));
        }
        return $arr;
    }

    private function readlogfilefour(){
        $log_file = isset($_FILES) ?  $_FILES['upfname']['tmp_name']  : "";
        $data = file($log_file,FILE_IGNORE_NEW_LINES);
        $ldata = [];
        $sdata = $this->splitlogfile($data);
        $mdata = $this->mergelogfourdata($sdata);
        foreach($this->fullarr as $finaldata){
            if($finaldata[4]=="rsyslogd:"){
                $obj = new stdclass();
                $month  =  date('m', strtotime($finaldata[0]));
                $newdate =  date('Y')."-".$month."-".$finaldata[1];
                $obj->idate = $newdate;
                $obj->itime =$finaldata[2];
                $obj->servername = $finaldata[3];
                $obj->daemonname =  preg_replace("/[^a-zA-Z]+/", "",$finaldata[4]);
                $sftware = explode(";",$finaldata[6]);
                $sftversion =  explode(";",$finaldata[7]);
                $obj->software = str_replace("&quot","",$sftware[1]);
                $obj->swver = str_replace("&quot","",$sftversion[1]);
                $obj->remarks  = "";
                for($i=11;$i< count($finaldata);$i++){
                    $obj->remarks .= $finaldata[$i]." ";
                }
            }elseif($finaldata[4]=="python:"){
                $obj = new stdclass();
                $month  =  date('m', strtotime($finaldata[0]));
                $newdate =  date('Y')."-".$month."-".$finaldata[1];
                $obj->idate = $newdate;
                $obj->itime =$finaldata[2];
                $obj->servername = $finaldata[3];
                $obj->daemonname =  preg_replace("/[^a-zA-Z]+/", "",$finaldata[4]);
                $obj->software = "Nil";
                $obj->swver = "Nil";
                $remarks = "";
                 for($i=11;$i< count($finaldata);$i++){
                     $remarks .= $finaldata[$i]." ";
                 }
                 $fullremarks =  explode("#012#012",$remarks);
                 $obj->remarks =  $fullremarks[0];
            }else{
                $obj = new stdclass();
                $month  =  date('m', strtotime($finaldata[0]));
                $newdate =  date('Y')."-".$month."-".$finaldata[1];
                $obj->idate = $newdate;
                $obj->itime =$finaldata[2];
                $obj->servername = $finaldata[3];
                $obj->daemonname =  preg_replace("/[^a-zA-Z]+/", "",$finaldata[4]);
                $obj->software = "Nil";
                $obj->swver = "Nil";
                $obj->remarks  = "";
                for($i=5;$i< count($finaldata);$i++){
                    $obj->remarks .= $finaldata[$i]." ";
                }
            }
            array_push($ldata,$obj);
        }
        return $ldata;
    }

    private function mergelogfourdata($sdata){
        foreach($sdata as $data){
            if(strlen($data[0])==3 && (isset($data[1]) && strlen($data[1])==2)){
                if(is_array($this->dataarr) && count($this->dataarr) > 0 ){
                    array_push($this->fullarr,$this->dataarr);
                }
                $this->dataarr  = [];
                for($i=0;$i<count($data);$i++){
                    array_push($this->dataarr,$data[$i]);
                }
            }else{
                for($i=0;$i<count($data);$i++){
                    array_push($this->dataarr,$data[$i]);
                }
            }
        }
    }



    public  function  filevalidaion(){
        if(isset($_FILES['upfname']['name']) &&  strlen($_FILES['upfname']['name']) > 1){
            $extension = substr(strrchr($_FILES['upfname']["name"], '.'), 1);
            if($extension != "log" &&  $extension != "text"){   
                echo  '<script>notifyError("Invalid File Format Only log and text are allowed")</script>';
                return false;
            }else{
                return true;
            }
        }
    }

    private function readlogfileone(){
      //  $log_file = 'D:\xampp\htdocs\Project\log\logfileone.log';
        $log_file = isset($_FILES) ?  $_FILES['upfname']['tmp_name']  : "";
        $data = file($log_file, FILE_SKIP_EMPTY_LINES);
        $ldata = [];
        foreach($data as $fdata){
            $filedata   = explode(" ",$fdata);
            if(count($filedata) > 10){
                $obj =  new stdclass();
                $obj->hsmdate =  $filedata[5];
                $obj->hsmtime =  $filedata[2];
                $obj->servername  =  preg_replace("/[^a-zA-Z]+/", "",$filedata[4]);
                $obj->daemonname =  $filedata[3];
                $obj->daemonid  =  preg_replace("/[^0-9]+/", "",$filedata[4]);
                $obj->id  =  preg_replace("/[^a-zA-Z0-9]+/", "",$filedata[2]);
                $obj->msgtype =  preg_replace("/[^a-zA-Z]+/", "",$filedata[10]);
                $obj->servertype = $filedata[8]." ".preg_replace("/[^a-zA-Z]+/", "",$filedata[9]);
                $obj->remarks = "";
                for($i=11;$i < count($filedata) ;$i++){
                    $obj->remarks .= $filedata[$i]." ";
                }
            }else{
                for($i=0;$i < count($filedata) ;$i++){
                    $obj->remarks .= $filedata[$i]." ";
                }
            }
            $ldata[] =  $obj;            
        }
        return $ldata;
    }

    private function insertdata($insdata,$type){   
        foreach($insdata as $idata){
            $data  = is_array($idata) ?  $idata : (array)$idata; 
           // var_dump($data);
            if($type==5){
                $sql = "INSERT INTO hsmlog(hsmdate,hsmtime,servername,daemonname,daemonid,id,msgtype,servertype,remarks) values(:hsmdate,:hsmtime,:servername,:daemonname,:daemonid,:id,:msgtype,:servertype,:remarks)";
            }elseif($type==3){
                $sql = "INSERT INTO raserv(rdate,rtime,remarks,servername) values(:rdate,:rtime,:remarks,:servername)";
            }elseif($type==6){
                $sql = "INSERT INTO seclog(secdate,sectime,servername,daemonname,daemonid,grp,usr,gname,uname,gid,uid,homename,shname,accname,ipaddr,portno,servicename,remarks)
                 values(:secdate,:sectime,:servername,:daemonname,:daemonid,:grp,:usr,:gname,:uname,:gid,:uid,:homename,:shname,:accname,:ipaddr,:portno,:servicename,:remarks)";
            }elseif($type==2){
                $sql = "INSERT INTO calog(cdate,ctime,logid,loglevel,cacert,daemon,servername,remarks,DN,identifiedby,fetchedby,hashstring,CN,O,L,ST,C)
                 Values(:cdate,:ctime,:logid,:loglevel,:cacert,:daemon,:servername,:remarks,:DN,:identifiedby,:fetchedby,:hashstring,:CN,:O,:L,:ST,:C)";
            }elseif($type==4){
                $sql= "INSERT INTO  igccalog(idate,itime,servername,daemonname,software,swver,remarks) values(:idate,:itime,:servername,:daemonname,:software,:swver,:remarks)";
            }
            $stmt = $this->db->prepare($sql);
            try{  
            $stmt->execute($data);
            $result =  $this->db->lastInsertId();
            //return $result;
            }catch (PDOException $e){
                echo  $e->getMessage();
                echo  '<script>notifyError("'.$e->getMessage().'")</script>';
                return false;
            }
        }
        return true;
    }

    private function readlogfilethree(){
          //$log_file = 'D:\xampp\htdocs\Project\log\logfilethree.log';
          $log_file = isset($_FILES) ?  $_FILES['upfname']['tmp_name']  : "";
          $data = file($log_file, FILE_SKIP_EMPTY_LINES);
         // var_dump($data);
           $ldata = [];
           foreach($data as $fdata){
               $filedata   = explode(" ",$fdata);
            //    if(count($filedata) == 5 || count($filedata) == 6){  
               //   var_dump($filedata);
                if(strlen($filedata[0])==10){
                    $obj =  new stdclass();
                     $obj->rdate =  $filedata[0];
                     $obj->rtime =  $filedata[1];
                     $obj->servername =  'raserver';
                     $obj->remarks  =  '';
                     for($i=2;$i < count($filedata) ;$i++){
                         $obj->remarks .= $filedata[$i]." ";
                     }
                     array_push($ldata,$obj);
                }elseif(count($filedata)==6 || count($filedata)==3){
                    $remarks = '';
                    if(strlen($filedata[0])==3){
                        $obj2 =  new stdclass();
                        $month  =  date('m', strtotime($filedata[1]));
                        $newdate =  $filedata[5]."-".$month."-".$filedata[2];
                        $obj2->rdate =  $newdate;
                        $obj2->rtime =  $filedata[3];
                        $obj2->servername =  'raserver';
                    }elseif(strlen($filedata[0])==16){
                        for($i=0;$i < count($filedata);$i++ ){
                            $remarks .=  preg_replace("/[^a-zA-Z]+/", " ",$filedata[$i]);
                        }
                        $obj2->remarks = $remarks;
                    }
                    if(count((array)$obj2)==3){
                        array_push($ldata,$obj2);
                    }
                }elseif(count($filedata)==8){
                 //   var_dump($filedata);
                    if(strlen($filedata[0])==7){
                       $stdobj =  new stdclass();
                       $twoexp = explode("...",$filedata[3]);
                       $stdobj->rdate = $twoexp[1];
                       $stdobj->rtime = $filedata[4];
                       $stdobj->servername =  'raserver';
                       $stdobj->remarks = "";
                       for($i=5;$i < count($filedata);$i++ ){
                        $stdobj->remarks .=  $filedata[$i]." ";
                        }
                    }
                    array_push($ldata,$stdobj);
                }    
           } 
          // var_dump($ldata);
           return $ldata;
      }

      private function readlogfilefive(){
       // $log_file = 'D:\xampp\htdocs\Project\log\logfilefive.log';
        $log_file = isset($_FILES) ?  $_FILES['upfname']['tmp_name']  : "";
        $data = file($log_file, FILE_SKIP_EMPTY_LINES);
        $ldata  = [];
         foreach($data as $fdata){
             $filedata   = explode(" ",$fdata);
             $getremarks ="";
             if(strlen($filedata[0])==3){
                $obj =  new stdclass();
                $month  =  date('m', strtotime($filedata[0]));
                $newdate =  date('Y')."-".$month."-".$filedata[1];
                $obj->secdate = $newdate;
                $obj->sectime = $filedata[2];
                $obj->servername = $filedata[3];
                $obj->daemonname = preg_replace("/[^a-zA-Z]+/", "",$filedata[4]);
                $obj->daemonid = preg_replace("/[^0-9]+/", "",$filedata[4]);
                $obj->grp = "Nil";
                
                $obj->gname ="Nil";
                $obj->uname ="Nil";
                $obj->gid ="Nil";
                $obj->uid ="Nil";
                for($i=5;$i < count($filedata);$i++ ){
                    $getremarks .=  $filedata[$i];
                }
                if(preg_match_all('/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/',$getremarks,$matches)){
                    $ipaddress =   $matches[0][0];
                }
                $splitremarks  = explode("port",$getremarks);
                $finduser  = explode("USER=",$getremarks);
                if(isset($finduser[1])){
                    $getaccname  = explode(";",$finduser[1]);
                }
                $findhost  = explode("PWD=",$getremarks);
                if(isset($findhost[1])){
                    $gethostname  = explode(";",$findhost[1]);
                }
                $findcommand  = explode("COMMAND=",$getremarks);
                if(isset($findcommand[1])){
                    $getcommend  = explode(";",$findcommand[1]);
                }
                //var_dump($finduser);
                $obj->homename =isset($gethostname[0]) ? $gethostname[0] : "Nil";
                $obj->shname  =isset($getcommend[0]) ? $getcommend[0] : "Nil";
                $obj->accname = isset($getaccname[0]) ?  $getaccname[0] : "Nil";
                $gethostname[0] = "Nil";$getcommend[0] = "Nil";$getaccname[0] = "Nil";
                $obj->ipaddr =isset($ipaddress) ?  $ipaddress : "Nil";
                if(isset($ipaddress)=='10.28.200.96'){
                    $obj->usr = "root";
                }else{
                    $obj->usr = "Nil";
                }
                $ipaddress = "Nil";
                $obj->portno =isset($splitremarks[1]) ?  preg_replace("/[^0-9]+/", "",$splitremarks[1])  : "Nil";
                $obj->servicename ="Nil";
                $obj->remarks = "";
                for($i=5;$i < count($filedata);$i++ ){
                    $obj->remarks .=  $filedata[$i]." ";
                }
                if(isset($finduser[1])){
                    $getaccname  = explode(";",$finduser[1]);
                    if(strlen($getaccname[0]) > 2){
                        $obj->remarks = "Nill";
                    }
                }
                }else{
                   // var_dump($filedata);
                }
                $ldata[] = $obj ;
         } 
         return $ldata; 
    }
  

    public function single_func($data,$pdata){
        switch($data){
            // log One
            case $data =="HSM" : 
                $resultdata  = $this->readlogfileone();
                $insresult  =  $this->insertdata($resultdata,5);
                if($insresult==true){
                    return $this->storelogfile($pdata);
                }
                return 0;
            // log Two
            case $data =="CA" : 
                $resultdata  = $this->readlogfiletwo();
                $insresult  =  $this->insertdata($resultdata,2);
                if($insresult==true){
                    return $this->storelogfile($pdata);
                }
                return 0;   
            // log Three
            case $data =="RASERVE" :
                $resultdata  = $this->readlogfilethree();   
                $insresult  =  $this->insertdata($resultdata,3);
                if($insresult==true){
                    return $this->storelogfile($pdata);
                }
                return 0;
            // log Four
            case $data =="IGCCA" : 
                $resultdata  = $this->readlogfilefour();
                $insresult  =  $this->insertdata($resultdata,4);
                if($insresult==true){
                    return $this->storelogfile($pdata);
                }
                return 0;
            // log Five
            case $data =="SEC" : 
                $resultdata  = $this->readlogfilefive();
                $insresult  =  $this->insertdata($resultdata,6);
                if($insresult==true){
                    return $this->storelogfile($pdata);
                }
                return 0;
            default : 
            echo  '<script>notifyError("Please Select Valid Option")</script>';                                   
        }
    }
}
$logupload  = new Upload();
$submitcheck = isset($_POST["uploadlog"])  ? true : false;
if($submitcheck){
    $data  = $_POST;
    unset($data['uploadlog']); 
    if(isset($data['servername']) && strlen($data['servername']) > 1 && isset($_FILES['upfname']['name']) && strlen($_FILES['upfname']['name']) > 1 && strlen($_SESSION["username"]) > 1 ){
        if($logupload->filevalidaion()){
            $result  =  $logupload->single_func($data['servername'],$data);
            if($result > 0){
                echo  '<script>notifySuccess("Log File Uploaded Successfully!")</script>';
            }
        }
    }else{
        echo  '<script>notifyError("Please Fill The Form Credentials")</script>';
    }
  

}

?>
<p class="text-center m-5 h3">SERVER LOG ANALYSIS - UPLOAD</p>
<div class="container">
<div class="card">
  <div class="card-header">Upload Log File</div>
  <div class="card-body">
  <form class="form-inline" action="" method="POST" enctype="multipart/form-data">
    <div class="form-group col-md-4">
    <select class="custom-select" name="servername">
        <option value="0" selected disabled>Choose ...</option>
        <option value="HSM">HSM SERVER LOG</option>
        <option value="CA">CA SERVER LOG</option>
        <option value="RASERVE">RA SERVER LOG</option>
        <option value="IGCCA">IGCCA SERVER LOG</option>
        <option value="SEC">SEC SERVER LOG</option>
    </select>
    </div>
    <div class="custom-file col-md-4">
        <input type="file" class="custom-file-input" id="upfname" name="upfname">
        <label class="custom-file-label" for="upfname">Choose log file</label>
    </div>
    <div class=" col-md-4 text-center">
         <button class="btn btn-primary" type="submit" name="uploadlog">Upload</button>
    </div>
</form>
  </div>
</div>
</div>
