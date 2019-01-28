<?php 
$admin_id = 0;
$isEditingUser = false;
$username = "";
$role = "";
$email = "";
$errors = [];
 
if (isset($_POST['create_admin'])) {
	createAdmin($_POST);
}
if (isset($_GET['edit-admin'])) {
	$isEditingUser = true;
	$admin_id = $_GET['edit-admin'];
	editAdmin($admin_id);
}
if (isset($_POST['update_admin'])) {
	updateAdmin($_POST);
}
if (isset($_GET['delete-admin'])) {
	$admin_id = $_GET['delete-admin'];
	deleteAdmin($admin_id);
}
if (isset($_GET['delete-book'])) {
	$book_id = $_GET['delete-book'];
	deleteBook($book_id);
}
/* - - - - - - - - - - - -
-  functions
- - - - - - - - - - - - -*/
function createAdmin($request_values){
	global $conn, $errors, $role, $username, $email;
	$username = esc($request_values['username']);
	$email = esc($request_values['email']);
	$password = esc($request_values['password']);
	$passwordConfirmation = esc($request_values['passwordConfirmation']);

	if(isset($request_values['role'])){
		$role = esc($request_values['role']);
	}
	if ($password != $passwordConfirmation) { array_push($errors, "Нууц үгс буруу байна!"); }
	$user_check_query = "SELECT * FROM users WHERE username='$username' OR email='$email' LIMIT 1";
	$result = mysqli_query($conn, $user_check_query);
	$user = mysqli_fetch_assoc($result);
	if ($user) { 
		if ($user['username'] === $username) {
		  array_push($errors, "Хэрэглэгчийн нэр давхцаж байна!");
		}
		if ($user['email'] === $email) {
		  array_push($errors, "Хэрэглэгчийн Имейл давхцаж байна!");
		}
	}
	if (count($errors) == 0) {
		$password = $password;
		$query = "INSERT INTO users (username, email, role, password) 
				  VALUES('$username', '$email', '$role', '$password') ";
		mysqli_query($conn, $query);

		$_SESSION['message'] = "Хэрэглэгч бүртгэгдлээ!";
		header('location: users.php');
		exit(0);
	}
}
function editAdmin($admin_id)
{
	global $conn, $username, $role, $isEditingUser, $admin_id, $email;

	$sql = "SELECT * FROM users WHERE id=$admin_id LIMIT 1";
	$result = mysqli_query($conn, $sql);
	$admin = mysqli_fetch_assoc($result);

	// Хэрэглэгчийн ($username and $email) форм луу зөөх
	$username = $admin['username'];
	$email = $admin['email'];
}

function updateAdmin($request_values){
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
		$query = "UPDATE users SET username='$username', email='$email', role='$role', password='$password' WHERE id=$admin_id";
		mysqli_query($conn, $query);
		$_SESSION['message'] = "Хэрэглэгчийн мэдээллийг засварлав!";
		header('location: users.php');
		exit(0);
	}
}
function deleteAdmin($admin_id) {
	global $conn;
	$sql = "DELETE FROM users WHERE id=$admin_id";
	if (mysqli_query($conn, $sql)) {
		$_SESSION['message'] = "Хэрэглэгч устлаа!";
		header("location: users.php");
		exit(0);
	}
}

function getAdminUsers(){
	global $conn, $roles;
	$sql = "SELECT * FROM users WHERE role IS NOT NULL";
	$result = mysqli_query($conn, $sql);
	$users = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $users;
}
function esc(String $value){
	global $conn;
	$val = trim($value); 
	$val = mysqli_real_escape_string($conn, $value);
	return $val;
}


/* - - - - - - - - - - - -
-  book functions
- - - - - - - - - - - - -*/
if (isset($_GET['delete-book'])) {
	$admin_id = $_GET['delete-book'];
	deleteBook($book_id);}

function showbook()
{
	global $conn;
	$sql = "SELECT * FROM books ORDER BY id ASC";
	$result = mysqli_query($conn, $sql);
	$books = mysqli_fetch_all($result, MYSQLI_ASSOC);
	return $books;
}


/*         book  upload          */

if(isset($_POST["save-book"])){
	global $conn,$errors;
  	$name = $_POST['book-name'];
    $path = "books/";
    $path = $path . basename( $_FILES['uploaded_file']['name']);
    
    $book_check_query = "SELECT * FROM books WHERE name='$name' LIMIT 1";
	$result = mysqli_query($conn, $book_check_query);
	$book = mysqli_fetch_assoc($result);
	if($book){ 
		if ($book['name'] === $name)array_push($errors, "Номын нэр давхцаж байна!");
	}
	if(count($errors) == 0)
	{
		if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $path)) {
    $sql = "INSERT INTO books (name,pathh) VALUES ('$name','$path') ";
    if(mysqli_query($conn,$sql)){
    	$_SESSION['message']= $name."-ном бүртгэгдлээ!";
    	header("location: books.php");
		exit(0);
    }else{        
		$_SESSION['message']= "Бүртгэхэд алдаа гарлаа!";
        header("location: books.php");
		exit(0);
    }
	}else{
		$_SESSION['message']= "Номын хэмжээ 4мегабайт хэтэрсэн тул бүртгэх боломжгүй байна!";
        header("location: books.php");
		exit(0);
	}
	}    
}
function deleteBook($book_id) {
	global $conn;
	$sql = "DELETE FROM books WHERE id=$book_id";
	if (mysqli_query($conn, $sql)) {
		$_SESSION['message'] = "Ном устлаа!";
		header("location: books.php");
		exit(0);
	}
}






?>