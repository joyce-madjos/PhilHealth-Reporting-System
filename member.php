<?php

include_once 'config.php';


$Piin= $_POST['Piin'];
$FullName= $_POST['FullName'];
$MemberCategory= $_POST['MemberCategory'];
$SubCategory= $_POST['SubCategory'];
$TIN= $_POST['TIN'];
$ForeignAddress= $_POST['ForeignAddress'];
$Sex= $_POST['Sex'];
$DoB= $_POST['DoB'];
$PoB= $_POST['PoB'];
$CivilStatus= $_POST['CivilStatus'];
$NHTSCoverage= $_POST['NHTSCoverage'];


		//Inserting into table member information
        $INSERT_INFO = "INSERT INTO member_information (Name, Foreign_Address, Sex,
                    Date_of_Birth, Place_of_Birth, Civil_Status,
                    Member_Category, nhts_period)
                    VALUES ('".$FullName."', '".$ForeignAddress."', '".$Sex."',
                            '".$DoB."', '".$PoB."', '".$CivilStatus."',
                            '".$MemberCategory."', '".$NHTSCoverage."')";

        $stmt = $conn->prepare($INSERT_INFO);
        $stmt->execute();
        $stmt->close();


        //Inserting into table category
        $INSERT_category = "INSERT INTO category (member_category,sub_category)
                    VALUES ('".$MemberCategory."', '".$SubCategory."')";

        $stmt = $conn->prepare($INSERT_category);
        $stmt->execute();
        $stmt->close();


        //Inserting into table data record
        $INSERT_data = "INSERT INTO data_record (PIN, Name, TIN)
                    VALUES ('".$Piin."','".$FullName."', '".$TIN."')";

        $stmt = $conn->prepare($INSERT_data);
        $stmt->execute();
        $stmt->close();


