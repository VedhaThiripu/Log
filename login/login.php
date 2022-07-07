<?php
 if(isset($_SESSION["project"]) && $_SESSION["project"] == true){
  header("location: home.php");
  exit;
}
class login {
  private  $db;
  private $err;
  public function __construct(){
    $this->db = Database::config();
  }
  public function login($username,$password){
    //echo md5("admin@1234");
    $sql = "SELECT * FROM users WHERE uname = :username";
    $stmt = $this->db->prepare($sql);
    $stmt->bindParam(":username", $username, PDO::PARAM_STR);
    $stmt->execute();
    if($stmt->rowCount() == 1){ 
      if($row = $stmt->fetch()){
        $ID = $row["ID"];
        $role = $row["urole"];
        $loginname = $row["uname"];
        $username = $row["username"];
        $hashed_password = $row["upassword"];
        if(md5($password)== $hashed_password){
          $_SESSION["project"] = true;
          $_SESSION["ID"] = $ID;
          $_SESSION["username"] = $username;
          $_SESSION["urole"] = $role;
          echo  '<script>
          notifySuccess("Login Successfully Please Wait")
          setTimeout(function () {
            window.location.href= "home.php"
          }, 1000);
          </script>';
        }else{
            $this->err =   "The password you entered was not valid";
        }
      }
    }else{
      $this->err = "No account found with that username";
    }
    return $this->err;
}
}
$logincheck = isset($_POST["login"])  ? true : false;
if($logincheck){
    $username  =  Form::post('username');
    $password  =  Form::post('password');
    $loginsec =  new login();
    $loginerr = $loginsec->login($username,$password);
}

?>
<?php  
if(isset($loginerr) && strlen($loginerr)>5){
  echo  '<script>notifyError("'.$loginerr.'")</script>';
}
?>
<div class="card">
  <div class="card-header text-white <?php echo  strlen(Settings::THEME) > 2 ? 'bg-'.Settings::THEME : 'bg-primary'  ?>"><b>
  <?php echo Settings::PTITLE ?></b>
  </div>
    <div class="card-body" style="margin-top:50px" >
      <h5 class="card-title text-center"><?php echo Settings::PTITLE."  LOGIN PAGE" ?></h5>
      <div class="container mt-2">
      <div class="row justify-content-center align-items-center  p-2">
        <div class="m-1 col-sm-8 col-md-6 col-lg-4 shadow-sm p-3 mb-5 bg-white border rounded">
          <div class="pt-5 pb-5">
            <img class="rounded mx-auto d-block" src="<?php  echo  BASE_DIR_VENDOR.DS.'img/loginlogo.png'   ?>" alt="" width=70px height=70px>
            <p class="text-center text-uppercase mt-3">Login</p>
            <form class="form  needs-validation" action="" method="POST" novalidate>
              <div class="form-group input-group-md">
                <input type="text" class="form-control" id="username"  name="username" value="<?php echo isset($username) ?  $username  : ''  ?>" placeholder="Enter User Name" required>
                <div class="invalid-feedback">Please Enter User Name</div>
              </div>
              <div class="form-group input-group-md">
                <input type="password" class="form-control" id="password" placeholder="Password" value="" name="password" required minlength="8" maxlength="10" > 
                <div class="invalid-feedback">Please Enter Password</div>
              </div>
              <button class="btn btn-lg btn-block btn-primary mt-4" type="submit" name="login">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="card-footer text-white text-center fixed-bottom <?php echo  strlen(Settings::THEME) > 2 ?  'bg-'.Settings::THEME : 'bg-primary'  ?>">
    <!-- Designed And Developed By  <?php echo Settings::PFOOTER ?> -->
  </div>
</div>

