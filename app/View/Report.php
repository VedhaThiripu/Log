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
        $select="t1.*";
        $filter='';
        $event_text='';
        if($servername=='Hardserver'){
            $table="hsmlog";
            $filter="t1.hsmdate";
            if($events==1){
                $event_text='%enabled%'; 
            }elseif($events==2){
                $event_text='%shutting down%';
            }elseif($events==3){
                $event_text='%InvalidModule%';
            }
        }elseif($servername=='EJB'){
            $table="calog";
            $filter="t1.cdate";
        }elseif($servername=='igcarca'){
            $table="igccalog";
            $filter="t1.idate";
        }elseif($servername=='raserver'){
            $table="raserv";
            $filter="t1.rdate";
            if($events==1){
                $event_text='%service initialized%'; 
            }elseif($events==2){
                $event_text='%raserv shutdown%';
            }elseif($events==3){
                $event_text='%found hardserver version 12.50.4%';
            }
        }elseif($servername=='ccaserver'){
            $table="seclog";
            $filter="t1.secdate";
            if($events==1){
                $event_text='%Accepted password%'; 
            }elseif($events==2){
                $event_text='%disconnect%';
            }elseif($events==3){
                $event_text='%error%';
            }
        }

        //data fetch
        if(strlen($servername) > 0 && strlen($events) == 0 && strlen($fromdate) == 0 && strlen($todate) ==0){
                $cond.=1;
        }elseif(strlen($servername) > 0 && strlen($events) == 0  && strlen($fromdate) > 0 && strlen($todate) ==0){
                $cond.=$filter." = '".$fromdate."'";
        }elseif(strlen($servername) > 0 && strlen($events) == 0  && strlen($fromdate) > 0 && strlen($todate) >0){
                $cond.=$filter ." BETWEEN '".$fromdate."' AND '".$todate."'";
        }elseif(strlen($servername) > 0  && strlen($events) > 0 && strlen($fromdate) == 0 && strlen($todate) ==0){
            $cond.="t1.remarks LIKE '".$event_text."'";
        }elseif(strlen($servername) > 0  && strlen($events) > 0 && strlen($fromdate) > 0 && strlen($todate) ==0 ){
            $cond.="t1.remarks LIKE '".$event_text."' AND ".$filter." LIKE '".$fromdate."'";
        } elseif(strlen($servername) > 0  && strlen($events) > 0 && strlen($fromdate) > 0 && strlen($todate) >0 ){
            $cond.="t1.remarks LIKE '".$event_text."' AND ".$filter." BETWEEN '".$fromdate."' AND '".$todate."'";;
        }    

        $sql  = "SELECT  ".$select ." FROM  ".$table. " t1 WHERE ".$cond;
       // echo $sql;
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
    <select class="custom-select" id="servername" name="servername" >
        <option value="0" selected disabled>Choose ...</option>
        <option value="igcarca">IGCA</option>
        <option value="EJB">CA</option>
        <option value="Hardserver">HSM</option>
        <option value="ccaserver">SEC</option>
        <option value="raserver">RASERVER</option>
    </select>
    </div>
    <div class="form-group col-md-3">
    <label for="events">Select Events</label>
    
    <select class="custom-select" id="events" name="events" >
        <option value="0" selected disabled>Choose ...</option>
        <option value="1">Login Details</option>
        <option value="2">Loggout</option>
        <option value="3">Error</option>
    </select>
   
    <!-- <select class="custom-select" id="events" name="events">
        <option value="0" selected disabled>Choose ...</option>
        <option value="1">Service Restart</option>
        <option value="2">Password Policy</option>
        <option value="3">User Details</option>
    </select> -->
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
            <th>Sno</th>
            <?php if(isset($_POST['servername']) && $_POST['servername']  == 'Hardserver'){ ?>
            <th>Date</th>
            <th>Time</th>
            <th>Server Name</th>
            <th>Daemon ID</th>
            <th>Product ID</th>
            <th>Remarks</th>
            <?php }?>
            <?php if(isset($_POST['servername']) && $_POST['servername']  == 'EJB'){ ?>
            <th>Date</th>
            <th>Time</th>
            <th>Server Name</th>
            <th>Daemon</th>
            <th>Remarks</th>
            <?php }?>
            <?php if(isset($_POST['servername']) && $_POST['servername']  == 'igcarca'){ ?>
            <th>Date</th>
            <th>Time</th>
            <th>Server Name</th>
            <th>Daemon Name</th>
            <th>Remarks</th>
            <?php }?>
            <?php if(isset($_POST['servername']) && $_POST['servername']  == 'raserver'){ ?>
            <th>Date</th>
            <th>Time</th>
            <th>Server Name</th>
            <th>Remarks</th>
            <?php }?>
            <?php }?>
            <?php if(isset($_POST['servername']) && $_POST['servername']  == 'ccaserver'){ ?>
            <th>Date</th>
            <th>Time</th>
            <th>Server Name</th>
            <th>Daemon ID</th>
            <th>Remarks</th>
            <?php }?>
            
        </tr>
    </thead>
    <tbody>

        <?php $i=1;  foreach($result as $rdata){?>
            <tr>
            <td><?php echo $i ?></td>
            <?php if(isset($_POST['servername']) && $_POST['servername']  == 'Hardserver'){ ?>
            <td><?php echo $rdata['hsmdate'] ?></td>
            <td><?php echo $rdata['hsmtime'] ?></td>
            <td><?php echo $rdata['servername'] ?></td>
            <td><?php echo $rdata['daemonid'] ?></td>
            <td><?php echo $rdata['id'] ?></td>
            <td><?php echo $rdata['remarks'] ?></td>
            <?php }?>
            <?php if(isset($_POST['servername']) && $_POST['servername']  == 'EJB'){ ?>
            <td><?php echo $rdata['cdate'] ?></td>
            <td><?php echo $rdata['ctime'] ?></td>
            <td><?php echo $rdata['servername'] ?></td>
            <td><?php echo $rdata['daemon'] ?></td>
            <td><?php echo $rdata['remarks'] ?></td>
            <?php }?>
            <?php if(isset($_POST['servername']) && $_POST['servername']  == 'igcarca'){ ?>
            <td><?php echo $rdata['idate'] ?></td>
            <td><?php echo $rdata['itime'] ?></td>
            <td><?php echo $rdata['servername'] ?></td>
            <td><?php echo $rdata['daemonname'] ?></td>
            <td><?php echo $rdata['remarks'] ?></td>
            <?php }?>
            <?php if(isset($_POST['servername']) && $_POST['servername']  == 'raserver'){ ?>
            <td><?php echo $rdata['rdate'] ?></td>
            <td><?php echo $rdata['rtime'] ?></td>
            <td><?php echo $rdata['servername'] ?></td>
            <td><?php echo $rdata['remarks'] ?></td>
            <?php }?>
            <?php if(isset($_POST['servername']) && $_POST['servername']  == 'ccaserver'){ ?>
            <td><?php echo $rdata['secdate'] ?></td>
            <td><?php echo $rdata['sectime'] ?></td>
            <td><?php echo $rdata['servername'] ?></td>
            <td><?php echo $rdata['daemonid'] ?></td>
            <td><?php echo $rdata['remarks'] ?></td>
            <?php }?>
            </tr>
        <?php $i++; } ?>
    </tbody>
    </table>
  </div>
</div>
<?php }else{
     echo  '<script>notifyError("No Data Found")</script>';
} ?>
<br/><br/><br/><br/>
