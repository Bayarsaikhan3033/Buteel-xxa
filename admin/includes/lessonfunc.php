<?php
$lesson_id = 0;
$isEditingLesson = false;
$lessonname = "";
$contentname = "";
$body = "";
$example = "";
$sort = "";
$content_body="";
$errors = [];
 
if (isset($_POST['create-lesson'])) {
	createLesson($_POST);
}
if (isset($_GET['edit-lesson'])) {
	$isEditingLesson = true;
	$lesson_id = $_GET['edit-lesson'];
	editlesson($lesson_id);
}
if (isset($_POST['update-lesson'])) {
	updateLesson($_POST);
}
if (isset($_GET['delete-lesson'])) {
	$lesson_id = $_GET['delete-lesson'];
	deleteLesson($lesson_id);
}
if(isset($_GET['show-content']))
{
	$lessonname = $_GET['show-content'];
	$contents = showContent($lessonname);
}

function createLesson($request_values){
	global $conn, $errors;
	$lessonname = esc($request_values['lessonname']);
	$contentname = $request_values['contentname'];
	$body = $request_values['body'];
	$example = $request_values['example'];
	$sort = $request_values['sort'];

	$user_check_query = "SELECT * FROM lessons WHERE content='$contentname' and name='$lessonname' LIMIT 1";
	$result = mysqli_query($conn, $user_check_query);
	$lesson = mysqli_fetch_assoc($result);
	if ($lesson) { 
		  array_push($errors, "Агуулга давхардаж байна!");
	}
	if (count($errors) == 0) {
		$query = "INSERT INTO lessons (name, content, body, example,sort) 
				  VALUES('$lessonname', '$contentname', '$body', '$example','$sort') ";
		mysqli_query($conn, $query);

		$_SESSION['message'] = "Хичээлийн агуулга хадгалагдсан!";
		header('location: lessons.php');
		exit(0);
	}
}

function editlesson($lesson_id)
{
	global $conn,$isEditingLesson, $lesson_id,$lessonname,$contentname,$content_body,$example,$sort;

	$sql = "SELECT * FROM lessons WHERE id='$lesson_id' LIMIT 1";
	$result = mysqli_query($conn, $sql);
	$lesson = mysqli_fetch_assoc($result);

	// Хэрэглэгчийн ($username and $email) форм луу зөөх
	$lesson_id = $lesson['id'];
	$lessonname = $lesson['name'];
	$contentname = $lesson['content'];
	$content_body = $lesson['body'];
	$example = $lesson['example'];
	$sort = $lesson['sort'];
}

function updateLesson($request_values){
	global $conn, $errors,$isEditingLesson, $lesson_id;

	$lesson_id = $request_values['lesson_id'];
	$lessonname = esc($request_values['lessonname']);
	$contentname = $request_values['contentname'];
	$body = $request_values['body'];
	$exmaple = $request_values['example'];
	$sort = $request_values['sort'];
	$isEditingLesson = false;
	$query = "UPDATE lessons SET name='$lessonname', content='$contentname', body='$body', example='$example', sort = '$sort' WHERE id =$lesson_id";
	mysqli_query($conn, $query);
	$_SESSION['message'] = "Хичээлийн агуулга засварлав!";
	header('location: lessons.php');
	exit(0);
}
function deleteLesson($lesson_id) {
	global $conn;
	$sql = "DELETE FROM lessons WHERE id='$lesson_id'";
	if (mysqli_query($conn, $sql)) {
		$_SESSION['message'] = "Хичээлийн агуулга устлаа!";
		header("location: lessons.php");
		exit(0);
	}
}

//  ------hicheeluuud------------
function showLessons()
{
	global $conn;
	$sql = "SELECT DISTINCT name FROM lessons ORDER BY id ASC";
	$result = mysqli_query($conn,$sql);
	$lessons = mysqli_fetch_all($result,MYSQLI_ASSOC);
	return $lessons;
}
$lessons = showLessons();
// hicheeliin aguulguud haruulah
function showContent($lessonname){
	global $conn,$contents;
	$sql = "SELECT * FROM lessons WHERE name='$lessonname' ORDER BY sort ASC";
	$result = mysqli_query($conn,$sql);
	$contents = mysqli_fetch_all($result,MYSQLI_ASSOC);
	return $contents;
}









 ?>
