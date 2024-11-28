<?php
$servername = 'db';
$username = 'cadastro_notas';
$password = 'C@dastro123';
$database = "cadastro_notas";

// Create connection
$con = mysqli_connect($servername, $username, $password, $database);

// // Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}

echo "Connected successfully";