<?php

include_once 'php/config.php';


$PIN= $_POST['PIN'];
$Personal_Share= $_POST['Personal_Share'];
$cat= $_POST['cat'];
$Employer_Share= $_POST['Employer_Share'];
$Grand_Total_Contribution= $_POST['Grand_Total_Contribution'];

$sql= "INSERT INTO remittance_report (PIN, personal_share, PEN, employer_share, grand_total_contribution) VALUES ('$PIN','$Personal_Share','$cat','$Employer_Share','$Grand_Total_Contribution');";
mysqli_query($conn, $sql);
echo 'data added';