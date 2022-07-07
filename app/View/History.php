<?php
 if(!isset($_SESSION["project"]) || $_SESSION["project"] !== true){
    header("location: index");
    exit;
}
require_once('Nav.php');
class  History{

    private  $db;
    private $err;
    public function __construct(){
      $this->db = Database::config();
    }

    public function fetchlogfiles(){
        $sql = "SELECT *,DATE_FORMAT(upftime, '%d-%m-%Y') as upfdate,DATE_FORMAT(upftime, '%r') as upftime  FROM updetails  ORDER BY DATE_FORMAT(upftime, '%r') DESC";
        $stmt = $this->db->prepare($sql);
        try{  
        $stmt->execute();
        $row = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return  $row;
        } catch (PDOException $e){
            echo  '<script>notifyError("'.$e->getMessage().'")</script>';
            return false;
        }
    }
}
$logupload  = new History();
$row = $logupload->fetchlogfiles();
?>
<p class="text-center m-5 h3">SERVER LOG ANALYSIS - HISTORY</p>
<div class="container">
<div class="card">
  <div class="card-header">Result</div>
  <div class="card-body">
  <table id="table_id" class="display">
    <thead>
        <tr>
            <th>SINO</th>
            <th>Server Type</th>
            <th>Upload Date</th>
            <th>Upload Time</th>
            <th>Upload Person</th>
            <th>File</th>
            <th>Download</th>
        </tr>
    </thead>
    <tbody>
    <?php $i=1;  foreach($row as $rdata){?>
            <tr>
            <td><?php echo $i ?></td>
            <td><?php echo $rdata['upftype'] ?></td>
            <td><?php echo $rdata['upfdate'] ?></td>
            <td><?php echo $rdata['upftime'] ?></td>
            <td><?php echo $rdata['sub_name'] ?></td>
            <td><a class="btn btn-success" href="<?php echo  BASE_DIR_DATA.DS.$rdata['upfname']; ?>" target="_blank">View</a></td>
            <td><a class="btn btn-warning" download href="<?php echo  BASE_DIR_DATA.DS.$rdata['upfname']; ?>" target="_blank">Download</a></td>
            </tr>
        <?php $i++; } ?>
    </tbody>
    </table>
  </div>
</div>
</div>
<br/><br/><br/><br/>
