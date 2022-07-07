<?php
 if(!isset($_SESSION["project"]) || $_SESSION["project"] !== true){
    header("location: index");
    exit;
}
require_once('Nav.php');
?>
<p class="text-center m-5 h3">WELCOME TO  SERVER LOG ANALYSIS</p>
<div class="text-center">
<img class="img-fluid " src="<?php echo BASE_DIR_VENDOR.'/img/home.gif'  ?>" style="height: 450px;" alt="Home">
</div>
