<?php
$servername = "localhost";
$username = "cadastro_notas";
$password = "C@dastro123";
$database = "cadastro_notas";

// Create connection
$conn = mysqli_connect($servername,$username, $password, $database);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";