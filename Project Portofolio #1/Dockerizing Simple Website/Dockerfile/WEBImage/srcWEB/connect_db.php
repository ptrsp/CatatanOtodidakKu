<?php
 $host = getenv('DB_CONTAINER_NAME');
// $host = 'DB_PP1';
 $user = 'root';
 $password = 'rahasia';
 $database = 'db_candidateweb';
 $con=mysqli_connect($host,$user,$password,$database);
?>
