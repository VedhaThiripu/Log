<nav class="navbar navbar-expand-lg navbar-dark <?php echo  strlen(Settings::THEME) > 2 ?  'bg-'.Settings::THEME : 'bg-primary'  ?> ">
  <a class="navbar-brand" href="home.php"><b><?php echo Settings::PTITLE ?></b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="home.php"><b>Home </b><span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link active" href="reports.php"><b>Reports</b></a>
      <a class="nav-item nav-link active" href="upload.php"><b>Upload</b></a>
      <a class="nav-item nav-link active" href="history.php"><b>History</b></a>
    </div>
    <div class="navbar-collapse justify-content-end" id="navbarCollapse">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link active btn bg-danger" href="logout.php"><b>Sign Out</b></a>
    </li>
  </ul>
</div>
  </div>
</nav>
<div class="card-footer text-white text-center fixed-bottom bg-primary " >
    <!-- Designed And Developed By  <?php echo Settings::PFOOTER ?> -->
  </div>