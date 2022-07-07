<?php
class Database {
    public function __construct() {
     //  $this->config();
    }
    
   public static function config(){
        try {
            $conn = new PDO("mysql:".DB_HOST."=;dbname=".DB_NAME,DB_USER,DB_PASSWORD);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
          } catch(PDOException $e) {
            echo "ERROR : DATABASE CONNECTION FAILED: " . $e->getMessage();
          }
          return $conn;
    }
    public function lastInsertId(){
      return $this->conn->lastInsertId();
    }
}

?>