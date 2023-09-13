<?php

$host = "localhost"; //Enter the host
$user = "root"; //Enter the user name
$password = ""; //Enter the password
$dbase = "philhealth"; //Enter the database



$conn= mysqli_connect ($host, $user, $password,$dbase);
if (!$conn)
{
die ('Could not connect:' . mysql_error());
}
else
echo 'connection success';
//mysqli_select_db($dbase, $conn);



