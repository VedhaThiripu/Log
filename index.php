<?php 
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
    foreach(glob("app/config/*.php") as $filename) {
        require_once $filename;
    }
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project</title>
    <script src="./vendors/Js/jquery.min.js"></script>
    <link rel="stylesheet" href="<?php  echo  BASE_DIR_VENDOR.'/css/bootstrap.min.css'?>">
    <link rel="stylesheet" href="<?php  echo  BASE_DIR_VENDOR.'/css/toastr.css'?>">
    <link rel="stylesheet" href="<?php  echo  BASE_DIR_VENDOR.'/css/jquery.dataTables.css'?>">
    <link rel="stylesheet" href="<?php  echo  BASE_DIR_VENDOR.'/css/dataTables.bootstrap4.min.css'?>">
    <script src="<?php  echo  BASE_DIR_VENDOR.'/Js/toastr.min.js'?>"></script>
    <link rel="stylesheet" href="<?php  echo  BASE_DIR_VENDOR.'/css/style.css'?>">
    <script src="<?php  echo  BASE_DIR_VENDOR.'/Js/main.js'?>"></script>
</head>
<body>
    
    <?php 
        // echo md5("sample");
        $uri = isset($_SERVER['REQUEST_URI']) ? explode('/', $_SERVER['REQUEST_URI']) : "";
        $param  =  isset($uri['2']) ? $uri['2']  : '';
        $GLOBALS['param'] =  $param;
        echo $param;
        switch($param){
            case $param =="" || $param == "index" || $param == "index.php" :
                require_once('./login/login.php');
                break;
            case $param == "home" || $param == "home.php" : 
                 require_once('./app/View/Home.php');
                 break;
            case $param == "reports" || $param == "reports.php" : 
                 require_once('./app/View/Report.php');
                 break;
            case $param == "upload" || $param == "upload.php": 
                 require_once('./app/View/Upload.php');
                 break;
            case $param == "history" || $param == "history.php" : 
                 require_once('./app/View/History.php');
                 break;
            case $param == "logout" || $param == "logout.php": 
                 require_once('./login/logout.php');
                 break;
            default : 
            echo "Not Found";
        }
    ?>
<script src="<?php  echo  BASE_DIR_VENDOR.'/Js/bootstrap.min.js'?>"></script>
<script src="<?php  echo  BASE_DIR_VENDOR.'/Js/popper.min.js'?>"></script>
<script src="<?php  echo  BASE_DIR_VENDOR.'/Js/jquery.dataTables.js'?>"></script>
<script src="<?php  echo  BASE_DIR_VENDOR.'/Js/dataTables.bootstrap4.min.js'?>"></script>

</body>
</html>