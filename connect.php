<?php
$db=mysqli_connect("localhost","root","","MediFind") or die("Failed to connect to MySQL: " . mysql_error());

// Check connection
if ($db->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?> 
