<?php
$name = $_REQUEST['txtName'];
$email   = $_REQUEST['txtEmail'];
$number = $_REQUEST['txtNumber'];
$voterid =  $_REQUEST['txtVoterID'];
$candidateid =  $_REQUEST['txtCandidateID'];





//database connection
include('dbConnect.php');

$sql = "INSERT into candidates(name,email,mobile,voterid,candidateid) values(:name,:email,:mobile,:voterid,:candidateid)";

$stmt = $pdo->prepare($sql);

$stmt->bindParam(":name",$name);
$stmt->bindParam(":email",$email);
$stmt->bindParam(":mobile",$number);
$stmt->bindParam(":voterid",$voterid);
$stmt->bindParam(":candidateid",$candidateid);

$stmt->execute();

header('location: pending.php');
?>
