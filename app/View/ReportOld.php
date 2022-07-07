<?php
 if(!isset($_SESSION["project"]) || $_SESSION["project"] !== true){
    header("location: index");
    exit;
}
require_once('Nav.php');
$result  = [];
class Report{
    private  $db;
    private $err;
    public function __construct(){
      $this->db = Database::config();
    }
    public function generatecond($data){
        $cond = "";
        $servername = isset($data['servername']) ?  $data['servername'] : "";
        $events =  isset($data['events']) ?  $data['events']  : '';
        $fromdate  =  isset($data['fromdate']) ?  $data['fromdate'] : '';
        $todate = isset($data['todate']) ?  $data['todate'] : '';
        $table  = isset($data['servername']) && $data['servername'] == 'Hardserver' ?  "hsmlog" : "seclog";
        $select  = isset($data['servername']) && $data['servername'] == 'Hardserver' ?  "t1.*,t1.hsmdate as secdate,t1.hsmtime as sectime" : "t1.*";
        if(strlen($servername) > 0 &&  $servername !='Hardserver'  && strlen($events) >  0 && strlen($fromdate) >= 1 && strlen($todate) >  1){
            $cond .= "t1.servername = '".$servername."' AND  t1.events = '".$events."' AND t1.secdate  BETWEEN '".$fromdate."' AND   '".$todate."'";
        }elseif(strlen($servername) > 0 &&  ($servername) =='Hardserver'  && strlen($events) >  0 && strlen($fromdate) >= 1 && strlen($todate) >  1){
            $cond .= "t1.servername = '".$servername."' AND  t1.events = '".$events."' AND t1.hsmdate  BETWEEN '".$fromdate."' AND   '".$todate."'";
        }elseif(strlen($servername) > 0 && $servername !='Hardserver' && strlen($events)  == 0  && strlen($fromdate) >  1 && strlen($todate) >  1){
            $cond .= "t1.servername = '".$servername."' AND  t1.secdate  BETWEEN '".$fromdate."' AND   '".$todate."'";
        }elseif(strlen($servername) > 0  && $servername =='HSM' && strlen($events)  == 0  && strlen($fromdate) >  1 && strlen($todate) >  1){
            $cond .= "t1.servername = '".$servername."' AND  t1.hsmdate  BETWEEN '".$fromdate."' AND   '".$todate."'";
        }elseif(strlen($servername) == 0 && $servername !='HSM' && strlen($events)  > 0   && strlen($fromdate) >  1 && strlen($todate) >  1){
            $cond .= "t1.events = '".$events."' AND t1.secdate  BETWEEN '".$fromdate."' AND   '".$todate."'";
        }elseif(strlen($servername) == 0 && $servername =='HSM' && strlen($events)  > 0   && strlen($fromdate) >  1 && strlen($todate) >  1){
            $cond .= "t1.events = '".$events."' AND t1.hsmdate   BETWEEN '".$fromdate."' AND   '".$todate."'";
        }elseif(strlen($servername) > 0 && strlen($events)  > 0   && strlen($fromdate) ==0 && strlen($todate) == 0){
            $cond .= "t1.servername ='".$servername."' AND  t1.events = '".$events."'";
        }elseif(strlen($servername) ==0  && strlen($events)  > 0  && strlen($fromdate) ==0 && strlen($todate) == 0){
            $cond .= "t1.events = '".$events."'";
        }
        elseif(strlen($servername) > 0 && strlen($events)  ==0  && strlen($fromdate) ==0 && strlen($todate) == 0){
            $cond .= "t1.servername = '".$servername."'";
        }else{
            echo  '<script>notifyError("Please Select Valid Type")</script>';
            $submitcheck =  false;
            return FALSE;
        }

        // foreach($data as $key=>$value){
        //     if(strlen($data[$key]) >= 1){
        //         $table  = isset($data['servername']) && $data['servername'] == 'HSM' ?  "hsmlog" : "seclog";
        //         $select  = isset($data['servername']) && $data['servername'] == 'HSM' ?  "t1.*,t1.hsmdate as secdate,t1.hsmtime as sectime" : "t1.*";
        //        if
        //         if(isset($data['fromdate']) && strlen($data['fromdate']) >){
        //             if(isset($data['servername']) && $data['servername'] == 'HSM'){
        //                 $cond .= "t1.sectime = '".$data[$key]."' AND ";
        //             }elseif($key=="todate"){
        //                 $cond .= "t1.sectime = '".$data[$key]."' AND ";
        //             }else{
        //                 $cond .= "t1.sectime = '".$data['fromdate']."' BETWEEN t1.sectime = '".$data['todate']."'";
        //             }
                    
        //         }elseif(isset($data['servername']) && $data['servername'] == 'HSM' && ($key=="fromdate" || $key=="todate")){
        //             if($key=="fromdate"){
        //                 $cond .= "t1.hsmdate = '".$data[$key]."' AND ";
        //             }elseif($key=="todate"){
        //                 $cond .= "t1.hsmdate = '".$data[$key]."' AND ";
        //             }else{
        //                 $cond .= "t1.hsmdate = '".$data['fromdate']."' BETWEEN t1.hsmdate = '".$data['todate']."'";
        //             }
        //         }elseif($key!="fromdate" &&  $key!="todate"){
        //             $cond .= "t1.".$key." = '".$data[$key]."' AND ";
        //         }   
        //     }
        // }
        // $condition =  substr_replace($cond, "", -5);
        $sql  = "SELECT  ".$select ." FROM  ".$table. " t1 WHERE ".$cond;
        echo $sql;
      return $sql;
    }

    public function generatereport($sql){
        $stmt = $this->db->prepare($sql);
        try{
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }catch (PDOException $e) {
            echo "DB ERROR : ".$e->getMessage();
            debug_print_backtrace();
            return NULL;
        }
        return isset($rows) ? $rows : '';
    }
}

$submitcheck = isset($_POST["reports"])  ? true : false;
if($submitcheck){
    $data = $_POST;
    unset($data['reports']);
    $reports =  new Report();
    $server = Form::post('servername');
    $events = Form::post('events');
    if(strlen($server) >= 1 || strlen($events) >= 1){
        $repdata = $reports->generatecond($data);
        if($repdata){
            $result = $reports->generatereport($repdata);
        }
    }else{
        echo  '<script>notifyError("Please Select Server/Events")</script>';
        $submitcheck =  false;
    }

}

?>
<p class="text-center m-5 h3">SERVER LOG ANALYSIS - REPORTS</p>
<div class="container">
<div class="card">
  <div class="card-header">Reports</div>
  <div class="card-body">
  <form class="form-inline" action="" method="POST">
  <div class="form-group col-md-3">
  <label for="servername">Select Server</label>
    <select class="custom-select" id="servername" name="servername">
        <option value="0" selected disabled>Choose ...</option>
        <option value="Firewall">Firewall</option>
        <option value="Proxy">Proxy</option>
        <option value="DNS">DNS</option>
        <option value="CA">CA</option>
        <option value="Hardserver">HSM</option>
        <option value="OCSP">OCSP</option>
    </select>
    </div>
    <div class="form-group col-md-3">
    <label for="events">Select Events</label>
    <select class="custom-select" id="events" name="events">
        <option value="0" selected disabled>Choose ...</option>
        <option value="1">Service Restart</option>
        <option value="2">Password Policy</option>
        <option value="3">User Details</option>
    </select>
    </div>
    <div class="form-group col-md-2">
    <label for="fromdate">From</label>
    <input type="date" class="form-control" id="fromdate" name="fromdate">
    </div>
    <div class="form-group col-md-2">
    <label for="todate">To</label>
    <input type="date" class="form-control" id="todate" name="todate">
    </div>
    <div class=" col-md-2 text-center">
         <button class="btn btn-primary" type="submit" name="reports">Submit</button>
    </div>
</form>
  </div>
</div>
<?php  if($submitcheck){ ?>
<?php  if(count($result) > 0){ ?>
<div class="card">
  <div class="card-header">Result</div>
  <div class="card-body">
  <table id="table_id" class="display">
    <thead>
        <tr>
            <th>Sino</th>
            <th>Date</th>
            <th>Time</th>
            <th>Server Name</th>
            <?php if(isset($_POST['servername']) && $_POST['servername']  != 'Hardserver'){ ?>
            <th>Daemon ID</th>
            <th>Software Version</th>
            <th>Product ID</th>
            <?php }?>
            <th>Remarks</th>
        </tr>
    </thead>
    <tbody>

        <?php $i=1;  foreach($result as $rdata){?>
            <tr>
            <td><?php echo $i ?></td>
            <td><?php echo $rdata['secdate'] ?></td>
            <td><?php echo $rdata['sectime'] ?></td>
            <td><?php echo $rdata['servername'] ?></td>
            <?php if(isset($_POST['servername']) && $_POST['servername']  != 'Hardserver'){ ?>
            <td><?php echo $rdata['daemonid'] ?></td>
            <td><?php echo $rdata['uname'] ?></td>
            <td><?php echo $rdata['uid'] ?></td>
            <?php }?>
            <td><?php echo $rdata['remarks'] ?></td>
            </tr>
        <?php $i++; } ?>
    </tbody>
    </table>
  </div>
</div>
<?php }else{
     echo  '<script>notifyError("No Data Found")</script>';
} }?>
<br/><br/><br/><br/>