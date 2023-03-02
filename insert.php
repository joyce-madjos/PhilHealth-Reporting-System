<?php

include_once 'config.php';


$PEN= $_POST['PEN'];
$App_Period= $_POST['App_Period'];
$Rem_Amount= $_POST['Rem_Amount'];
$Transac_Date= $_POST['Transac_Date'];
$employee_num= $_POST['employee_num'];


$sql= "INSERT INTO acknowledgement_receipt (PEN, Application_Period, Remitted_Amount, Transaction_Date, No_of_Employee) VALUES ('$PEN','$App_Period','$Rem_Amount','$Transac_Date','$employee_num');";
mysqli_query($conn, $sql);
echo 'data added';




