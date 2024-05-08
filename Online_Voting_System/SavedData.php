<?php
$name = $_REQUEST['txtName'];
$email   = $_REQUEST['txtEmail'];
$number = $_REQUEST['txtNumber'];
$voterid =  $_REQUEST['txtVoterID'];
$candidate = $_REQUEST['txtCandidateID'];





//database connection
include('dbConnect.php');

$sql = "INSERT into users(name,email,number,voterid,candidate) values(:name,:email,:number,:voterid,:candidate)";

$stmt = $pdo->prepare($sql);

$stmt->bindParam(":name",$name);
$stmt->bindParam(":email",$email);
$stmt->bindParam(":number",$number);
$stmt->bindParam(":voterid",$voterid);
$stmt->bindParam(":candidate",$candidate);
$stmt->execute();

header('location: successfully.php');
?>


