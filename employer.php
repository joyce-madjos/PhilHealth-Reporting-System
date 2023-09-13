<?php

include_once 'config.php';


$PEN= $_POST['PEN'];
$EmpyName= $_POST['EmpyName'];
$FullName= $_POST['FullName'];
$HeadName= $_POST['HeadName'];
$BusinessAdd= $_POST['BusinessAdd'];
$ContactNumber= $_POST['ContactNumber'];
$EmpyEmailAdd= $_POST['EmpyEmailAdd'];
$EmployerType= $_POST['EmployerType'];
$EmployerSubtype= $_POST['EmployerSubtype'];



		//Inserting into table employer_information
        $INSERT_EMPINFO = "INSERT INTO employer_information (Empy_Name, Name_of_Head, business_address,
                    contact_number, Empy_Email_Address, Employer_Type)
                    VALUES ('".$EmpyName."', '".$HeadName."', '".$BusinessAdd."',
                            '".$ContactNumber."', '".$EmpyEmailAdd."', '".$EmployerType."')";

        $stmt = $conn->prepare($INSERT_EMPINFO);
        $stmt->execute();
        $stmt->close();


        //Inserting into table employer
        $INSERT_employer = "INSERT INTO employer (PEN, Empy_Name)
                    VALUES ('".$PEN."', '".$EmpyName."')";

        $stmt = $conn->prepare($INSERT_employer);
        $stmt->execute();
        $stmt->close();


        //Inserting into table employer_category
        $INSERT_employercat = "INSERT INTO employer_category (Employer_Type, Employer_Sub_Type)
                    VALUES ('".$EmployerType."','".$EmployerSubtype."')";

        $stmt = $conn->prepare($INSERT_employercat);
        $stmt->execute();
        $stmt->close();


		//Inserting into table employer_employees
        $INSERT_employerandemployee = "INSERT INTO employer_employees (PEN, Empe_Name)
                    VALUES ('".$PEN."','".$FullName."')";

        $stmt = $conn->prepare($INSERT_employerandemployee);
        $stmt->execute();
        $stmt->close();
