<?php


class Form {

    public function __construct(){


    }

    public static function post($param){ 
        $data = isset($_POST[$param]) ? trim($_POST[$param]) : "";   		
        $data = trim($data);  
        $data = stripslashes($data);  
        $data = htmlspecialchars($data);
        return $data;  
    }

    public static function redirect($url) {
        header("location: ".$url."");
    }


}


?>