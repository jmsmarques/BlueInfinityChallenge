<? 

$dbusername = "username";
$dbpassword = "password";
$dbname = "dbname";

$conn = oci_connect($username, $password, $dbname);

if($conn -> connect_error){
    die("connection fail:".$conn -> connect_error);
}

session_start();

if(isset($_POST['email']) and isset( $_POST['password'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $sql_login = "SELECT Email FROM Table? WHERE Email like '%".$email."%'";

    if($result= $conn -> query($sql_login)){
        if($result->num_rows != 0) {
            $_SESSION['email'] = $email;
            header("Location: index.php");
        }
    } else {
        print($conn->error);
    }

    
}




?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="utf-8">
        <!--<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/login.css">
        <script>
            $('.message a').click(function(){
                $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
            });
        </script>-->
    </head>
    <body>
        <div class="login-page">
            <div class="form">
                <form class="login-form" method="post" action="login.php">
                    <input type="text" placeholder="Email" name="username"/>
                    <input type="password" placeholder="Password" name="password"/>
                    <button>login</button>
                    <p class="message"> No Account? <a href="register.php">Register here.</a></p>
                </form>
            </div>
        </div>
    </body>
</html>