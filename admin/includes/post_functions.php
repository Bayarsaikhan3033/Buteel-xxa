<?php 
$post_id = 0;
$isEditingPost = false;
$published = 0;
$title = "";
$body = "";
$featured_image = "";
$post_topic = "";

// Бүх постыг дуудах
function getAllPosts()
{
global $conn;
$sql = "SELECT * FROM posts";
$result = mysqli_query($conn, $sql);
$posts = mysqli_fetch_all($result, MYSQLI_ASSOC);

$final_posts = array();
foreach ($posts as $post) {
$post['author'] = getPostAuthorById($post['user_id']);
array_push($final_posts, $post);
}
return $final_posts;
}

// постын кодоор хэрэглэгчийн нэр буцаах
function getPostAuthorById($user_id)
{
	global $conn;
	$sql = "SELECT username FROM users WHERE id=$user_id";
	$result = mysqli_query($conn, $sql);
	if ($result) {
		// хэрэглэгчийн нэр буцаах
		return mysqli_fetch_assoc($result)['username'];
	} else {
		return null;
	}
}

/* - - - - - - - - - - 
-  Устгах засварлах үйлдэлүүд
- - - - - - - - - - -*/
//  create post button дарсан тохиолдолд
if (isset($_POST['create_post'])) { createPost($_POST); }
//  Edit post button дарсан тохиолдолд засварлах
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
function createPost($request_values)
	{
		global $conn, $errors, $title, $body;
		$title = esc($request_values['title']);
		$body = htmlentities(esc($request_values['body']));
			
		$query = "INSERT INTO posts (user_id, title,  body, created_at) VALUES(1, '$title','$body', now())";
		if(mysqli_query($conn, $query)){ 
			$inserted_post_id = mysqli_insert_id($conn);
			$_SESSION['message'] = "Бичлэг амжилттай нийтлэгдсэн!";
			header('location: posts.php');
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
		header('location: posts.php');
		exit(0);
	}
	// Нийтлэл устгах
	function deletePost($post_id)
	{
		global $conn;
		$sql = "DELETE FROM posts WHERE id=$post_id";
		if (mysqli_query($conn, $sql)) {
			$_SESSION['message'] = "Нийтлэл устгагдсан!";
			header("location: posts.php");
			exit(0);
		}
	}


// Нийтлэх, түр үлдээх товчлуур шалгах
if (isset($_GET['publish']) || isset($_GET['unpublish'])) {
	$message = "";
	if (isset($_GET['publish'])) {
		$message = "Нийтлэгдсэн!";
		$post_id = $_GET['publish'];
	} else if (isset($_GET['unpublish'])) {
		$message = "Нийтлэхийг түр зогсоосон!";
		$post_id = $_GET['unpublish'];
	}
	togglePublishPost($post_id, $message);
}
// Нийтлэх болон түр зогсоох үйлдэл
function togglePublishPost($post_id, $message)
{
	global $conn;
	$sql = "UPDATE posts SET published=!published WHERE id=$post_id";
	
	if (mysqli_query($conn, $sql)) {
		$_SESSION['message'] = $message;
		header("location: posts.php");
		exit(0);
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

if(isset($_POST['save-contact']))
{
	global $conn;
	$admin_email = $_POST['admin-email'];
	$admin_phone = $_POST['admin-phone'];
	$admin_address = $_POST['admin-address'];
	$query = "UPDATE contact SET admin_email='$admin_email', admin_phone='$admin_phone', admin_address = '$admin_address' WHERE id=1";
	mysqli_query($conn, $query);
	$_SESSION['message'] = "Холбоо барих мэдээлэл засварлагдсан!";
}
$user_too = getUserCount();
$post_too = getPostCount();
$comment_too = getCommentCount();
editContact();



?>