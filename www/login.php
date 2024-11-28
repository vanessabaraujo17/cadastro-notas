<?php
ob_start();
session_start();
include 'database/sql.php';

if (isset($_REQUEST['email']) && isset($_REQUEST['password'])) {

  $email = mysqli_real_escape_string($con, $_REQUEST['email']);
  $password = mysqli_real_escape_string($con, $_REQUEST['password']);
  $qr = mysqli_query($con, "select * from usuarios where email='" . $email . "' and senha='" . md5($password) . "'");
  if (mysqli_num_rows($qr) > 0) {
    $data = mysqli_fetch_assoc($qr);
    $_SESSION['user_data'] = $data;
    if ($data['tipo_usuario'] == 2) {
      header("Location: teacher_home.php");
    }
    if ($data['tipo_usuario'] == 1) {
      header("Location: student_home.php");
    }

  } else {
    header("Location:index.php?error=Invalid Login Details");
  }
} else {
  header("Location:index.php?error=Please Enter Email and Password");
}