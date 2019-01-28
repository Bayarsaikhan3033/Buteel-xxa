<?php
$post_id = 0;
$isEditingPost = false;
$published = 0;
$title = "";
$body = "";
$errors = [];
$isEditingPost = false;

function esc(String $value){
	global $conn;
	$val = trim($value); 
	$val = mysqli_real_escape_string($conn, $value);
	return $val;
}
/* * * * * * * * * * * * * * *
* Бүх Постийг харуулах
* * * * * * * * * * * * * * */
function getPublishedPosts() {
	global $conn;
	$sql = "SELECT p.id, p.title, p.body, p.created_at, u.username FROM posts p,users u WHERE u.id=p.user_id and  p.published=true ORDER BY created_at DESC";
	$result = mysqli_query($conn, $sql);
	$posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $posts; 
}
function getPostsLimit3(){
	global $conn;
	$sql = "SELECT * FROM users, posts WHERE users.id=posts.user_id and  posts.published=true ORDER BY created_at DESC LIMIT 3";
	$result = mysqli_query($conn, $sql);
	// Бүх бичлэгүүдийг $posts массив болгох
	$posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $posts; 
}
/* * * * * * * * * * * * * * *
* Нийтлэлийг хаягаар дуудах
* * * * * * * * * * * * * * */
function getPostById($post_id){
	global $conn;
	$sql = "SELECT * FROM posts,users WHERE users.id=posts.user_id and posts.id='$post_id' ";
	$result = mysqli_query($conn, $sql);
	$post = mysqli_fetch_assoc($result);
	return $post;
}
/* * * * * * * * * * * * * * *
* Сэтгэгдэл хэсгийн функцууд
* * * * * * * * * * * * * * */
// post title aar post id awah
function getPostIdByTitle($title){
		global $conn;
		$sql = "SELECT * FROM id WHERE title='$title' ";
		$id = mysqli_query($conn, $sql);
		return $id;

	}
//post id gaar comment tooloh
function getCommentsCountByPostId($post_id)
	{
		global $conn;
		$sql = "SELECT COUNT(*) AS total FROM comments WHERE post_id = '$post_id' ";
		$result = mysqli_query($conn, $sql);
		$data = mysqli_fetch_assoc($result);
		return $data['total'];
	}
//post id gaar commentuud duudah
function getAllComments($post_id)
	{
		global $conn;
	$sql = "SELECT u.username, c.body, c.created_at FROM comments c, users u, posts p WHERE 
	c.post_id = '$post_id' and c.user_id = u.id and p.id = '$post_id'
	ORDER BY created_at ASC";
	$result = mysqli_query($conn, $sql);
	$comments = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $comments; 
	}
//comment baazruu hadgalah
	function createComment($post_id)
	{
		global $conn, $user_id, $post_id;
		$user_id = $_SESSION['user']['id'];
		if(isset($_POST['write_comment']))
		{
			$body = $_POST['body'];			
			$sql = "INSERT INTO comments(body,created_at,user_id,post_id)
			VALUES('$body',NOW(),$user_id,$post_id)";		
			if(mysqli_query($conn,$sql))
			{
			$_SESSION['message']="Сэтгэгдэл бичигдсэн!";
			header('location: post.php?post_id='.$post_id);
			exit(0);
			}
		}
	}
	

// comment post user tooloh
	function getCommentCount()
	{
		global $conn;
		$sql = "SELECT COUNT(*) AS total FROM comments";
		$result = mysqli_query($conn, $sql);
		$data = mysqli_fetch_assoc($result);
		return $data['total'];
	}
	function getPostCount()
	{
		global $conn;
		$sql = "SELECT COUNT(*) as total FROM posts ";
		$result = mysqli_query($conn,$sql);
		$data = mysqli_fetch_assoc($result);
		return $data['total'];
	}
	function getUserCount()
	{
		global $conn;
		$sql = "SELECT COUNT(*) as total FROM users";
		$result = mysqli_query($conn,$sql);
		$data = mysqli_fetch_assoc($result);
		return $data['total'];
	}
	function editContact()
	{
		global $conn, $admin_email, $admin_phone, $admin_address;
		$sql = "SELECT * FROM contact WHERE id=1 LIMIT 1";
		$result = mysqli_query($conn, $sql);
		$contact = mysqli_fetch_assoc($result);
		$admin_email = $contact['admin_email'];
		$admin_phone = $contact['admin_phone'];
		$admin_address = $contact['admin_address'];
	}
	editContact();
function showbook()
{
	global $conn;
	$sql = "SELECT * FROM books ORDER BY id ASC";
	$result = mysqli_query($conn, $sql);
	$books = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $books;
}
function showLessons()
{
	global $conn;
	$sql = "SELECT DISTINCT name FROM lessons ORDER BY id ASC";
	$result = mysqli_query($conn,$sql);
	$lessons = mysqli_fetch_all($result,MYSQLI_ASSOC);
	return $lessons;
}
$lessons = showLessons();



/* * * * * * * * * * * * * * *
* Profile post delete/edit functions
* * * * * * * * * * * * * * */

function getProfilePost($username) {
	global $conn;
	$sql = "SELECT p.id, p.title, p.body, p.created_at, u.username FROM posts p,users u WHERE u.id=p.user_id and  p.published=true and u.username = '$username' ORDER BY created_at DESC";
	$result = mysqli_query($conn, $sql);
	$posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $posts; 
}
function createProComment($post_id)
	{
		global $conn, $user_id, $post_id;
		$user_id = $_SESSION['user']['id'];
		if(isset($_POST['write_comment']))
		{
			$body = $_POST['body'];			
			$sql = "INSERT INTO comments(body,created_at,user_id,post_id)
			VALUES('$body',NOW(),$user_id,$post_id)";		
			if(mysqli_query($conn,$sql))
			{
			$_SESSION['message']="Сэтгэгдэл бичигдсэн!";
			header('location: fpost.php?post_id='.$post_id);
			exit(0);
			}
		}
	}






/* - - - - - - - - - - 
-  Устгах засварлах үйлдэлүүд
- - - - - - - - - - -*/
if (isset($_POST['create_post'])){ 
	$username = $_SESSION['user']['username'];
	createPost($_POST,$username);
}

if (isset($_GET['edit-post'])) {
	$isEditingPost = true;
	$post_id = $_GET['edit-post'];
	editPost($post_id);
}
//  update post button
if (isset($_POST['update_post'])) {
	updatePost($_POST);
}
//  Delete post button
if (isset($_GET['delete-post'])) {
	$post_id = $_GET['delete-post'];
	deletePost($post_id);
}

/* - - - - - - - - - - 
-  Пост фунцууд
- - - - - - - - - - -*/
function createPost($request_values,$username )
	{
	global $conn, $errors, $title, $body,$username;
	$title = esc($request_values['title']);
	$body = htmlentities(esc($request_values['body']));
	$sql = "SELECT id FROM users WHERE username ='$username' ";
	$userid = mysqli_query($conn, $sql);
	$userid = mysqli_fetch_assoc($userid);
	$userid = $userid['id'];
	$query = "INSERT INTO posts (user_id, title,  body, created_at) VALUES('$userid', '$title','$body', now())";
		if(mysqli_query($conn, $query)){ 
		//$inserted_post_id = mysqli_insert_id($conn);
		$_SESSION['message'] = "Бичлэг амжилттай нийтлэгдсэн!";
		header('location: profile.php');
		exit(0);		
		}
	}

	/* * * * * * * * * * * * * * * * * * * * *
	* - нийтлэл засварлахаар өгөгдлийг форм руу дамжуулах
	* * * * * * * * * * * * * * * * * * * * * */
	function editPost($role_id)
	{
		global $conn, $title, $body, $isEditingPost, $post_id;
		$sql = "SELECT * FROM posts WHERE id=$role_id LIMIT 1";
		$result = mysqli_query($conn, $sql);
		$post = mysqli_fetch_assoc($result);
		$title = $post['title'];
		$body = $post['body'];
	}
	//Нийтлэлийг засварлах
	function updatePost($request_values)
	{
		global $conn,$post_id, $title,$body;
		$title = esc($request_values['title']);
		$body = esc($request_values['body']);
		$post_id = esc($request_values['post_id']);
		$query = "UPDATE posts SET title='$title', body='$body', created_at = now() WHERE id=$post_id";
		mysqli_query($conn, $query);
		$_SESSION['message'] = "Нийтлэл засварлагдсан!";
		header('location: profile.php');
		exit(0);
	}
	// Нийтлэл устгах ajilj bga
	function deletePost($post_id)
	{
		global $conn;
		$sql = "DELETE FROM posts WHERE id=$post_id";
		if (mysqli_query($conn, $sql)) {
			$_SESSION['message'] = "Нийтлэл устгагдсан!";
			header("location: profile.php");
			exit(0);
		}
	}


if (isset($_POST['update_user'])) {
	updateUser($_POST);
}
function updateUser($request_values){
	global $conn, $errors, $role, $username, $isEditingUser, $admin_id, $email;
	$admin_id = $request_values['admin_id'];
	$isEditingUser = false;
	$username = esc($request_values['username']);
	$email = esc($request_values['email']);
	$password = esc($request_values['password']);
	$passwordConfirmation = esc($request_values['passwordConfirmation']);
	if(isset($request_values['role'])){
		$role = $request_values['role'];
	}
	if (count($errors) == 0) {
		$password = ($password);
		$query = "UPDATE users SET username='$username', email='$email', password='$password' WHERE id=$admin_id";
		mysqli_query($conn, $query);
		$_SESSION['message'] = "Хэрэглэгчийн мэдээлэл засварлагдсан!";
		header('location: profile.php');
		exit(0);
	}
}





?>