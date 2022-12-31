<?php
$host='cdbweb'; //container name
$user='root'; //user database
$pass='rahasia'; //password user database diatas
$conn = new mysqli($host,$user,$pass);
if ($conn->connect_error){
   die("Connection failed: ".$conn->connect_error);
} else {
   echo "Connected to MySQL server successfully";
}
?>
