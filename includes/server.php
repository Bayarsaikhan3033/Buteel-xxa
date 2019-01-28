<?php
$username = "";
$email    = "";
$errors = array(); 
//Хэрэглэгч бүртгэх
if(isset($_POST['register']))
{
	$username =$_POST['username'];
	$email =$_POST['email'];
	$password1 =$_POST['password1'];
    $password2 =$_POST['password2'];
    if ($password1 != $password2) { array_push($errors, "Нүүц үгүүд тохирохгүй байна!");}
    //хэрэглэгч бүртгэлтэй эсэхийг шалгах
    $user_check_query = "SELECT * FROM users WHERE username='$username' OR email='$email' LIMIT 1";
    $result = mysqli_query($conn, $user_check_query);
    $user = mysqli_fetch_assoc($result);
    if ($user) {
        if ($user['username'] === $username) {
              array_push($errors, "Хэрэглэгчийн нэр бүртгэгдсэн байна!");
            }
            if ($user['email'] === $email) {
              array_push($errors, "Имейл хаяг бүртгэгдсэн байна!");
            }
    }
    // Хэрэглэгчийг бүртгэх
    if (count($errors) == 0){
    $password = $password1;
    $sql = "INSERT INTO users (username,email,password)
    VALUES ('$username', '$email', '$password')";
     mysqli_query($conn, $sql);
        //Бүртгэгдсэн хэрэглэгчийн кодыг авах
    $reg_user_id = mysqli_insert_id($conn); 
        //Бүртгэгдсэн хэрэглэгчийн мэдээллийг SESSION-д хадгалах
    $_SESSION['user'] = getUserById($reg_user_id);
    header('location: welcome.php');              
    exit(0);
    }
}

//Нэвтрэх эрхийг шалгах
if(isset($_POST['login']))
{ 
    $username = $_POST['username'];
    $password = $_POST['password'];      
    $sql = "SELECT * FROM users WHERE username = '$username'  AND password = '$password' LIMIT 1";
    $result = mysqli_query($conn,$sql);
    if (mysqli_num_rows($result) > 0)
    {
        $reg_user_id = mysqli_fetch_assoc($result)['id']; 
        $_SESSION['user'] = getUserById($reg_user_id);
    if ( in_array($_SESSION['user']['role'], ["admin"])){
    header('location: ' . BASE_URL . '/admin/dashboard.php');
    exit(0);
    } else
    {
        if(!empty($_POST['remember'])) {
        setcookie("username",$username,time()+(30*24*60*60));
        setcookie("password",$password,time()+(30*24*60*60));
        } else{
        if(isset($_COOKIE['username']))setcookie("username","");
        if(isset($_COOKIE['password']))setcookie("password","");
        }
        header('location: welcome.php');
        exit(0);
    }
    } 
        else{
        array_push($errors, 'Хэрэглэгчийн нэр, нууц үг буруу байна!');
    }
}  


function getUserById($id)
    {
        global $conn;
        $sql = "SELECT * FROM users WHERE id=$id LIMIT 1";

        $result = mysqli_query($conn, $sql);
        $user = mysqli_fetch_assoc($result);
        // Хэрэглэгчийн мэдээллийг массив болгож буцаана
        // ['id'=>1 'username' => 'admin', 'email'=>'admin@email.com', 'password'=> 'password']
        return $user; 
    }
?>