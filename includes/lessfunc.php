<?php
$lessonname="";
$contentname="";
$body="";
$example="";
$sort=1;
if (isset($_GET['show-content'])) {
	$sort =1;
	$lessonname = $_GET['show-content'];
	showContent($lessonname);
	showOne($lessonname,$sort);
}
if(isset($_GET['show-content']) and isset($_GET['content-name']))
{
	$lessonname = $_GET['show-content'];
	$contentname = $_GET['content-name'];
	getLesson($lessonname,$contentname);
}
// hicheeliin aguulguud haruulah
function showContent($lessonname){
	global $conn,$contents;
	$sql = "SELECT * FROM lessons WHERE name='$lessonname' ORDER BY sort ASC";
	$result = mysqli_query($conn,$sql);
	$contents = mysqli_fetch_all($result,MYSQLI_ASSOC);
	return $contents;
}
function showOne($lessonname,$sort)
{
	global $conn,$one;
	$sql = "SELECT * FROM lessons WHERE name='$lessonname' AND  sort='$sort' LIMIT 1";
	$result = mysqli_query($conn,$sql);
	$one = mysqli_fetch_assoc($result);
	return $one;
}
function getLesson($lessonname,$contentname)
{
	global $conn,$one;
	$sql = "SELECT * FROM lessons WHERE name='$lessonname' AND  content='$contentname' LIMIT 1";
	$result = mysqli_query($conn,$sql);
	$one = mysqli_fetch_assoc($result);
	return $one;
}









 ?>
