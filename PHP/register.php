<? 

$dbusername = "username";
$dbpassword = "password";
$dbname = "dbname";

$conn = oci_connect($username, $password, $dbname);

if($conn -> connect_error){
    die("connection fail:".$conn -> connect_error);
}

if(isset($_POST)) {
    $name = $_POST['Nome'];
    $password = $_POST['Password'];
    $email = $_POST['Email'];

    $query1 = "INSERT INTO NOME_TABELA_CERTA 
    VALUES ('$name','$password','$email')";
    ;
    if($result = $conn -> query($query1))
    {  
        header("Location: login.php");
    }        
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
    <head>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <title>Registar Utilizador</title>
        <link rel="stylesheet" href="regist.css">
        <link rel="stylesheet" type="text/css" href="style/fg_membersite.css" />
        <script type='text/javascript' src='scripts/gen_validatorv31.js'></script>
        <link rel="STYLESHEET" type="text/css" href="style/pwdwidget.css" />

        <script src="scripts/pwdwidget.js" type="text/javascript"></script>      
    </head>
    <body>

        <!-- Form Code Start -->
        <div id='fg_membersite'>
            <form id="register" method="post" action="register.php" accept-charset="UTF-8" autocomplete="off">
                <fieldset id="field" >
                    <legend>Register</legend>

                    <div class='container'>
                        <label for='Nome' >Full name </label><br/>
                        <input id="inputreg" type="text" placeholder="Lorem ipsum whatever" name="Nome"/><br/>
                        <span id='register_name_errorloc' class='error'></span>
                    </div>

                    <div class='container'>
                        <label for='Email' >Email Address</label><br/>
                        <input id="inputreg" type="text" placeholder="email@mail.com" name="Email"/><br/>
                        <span id='register_email_errorloc' class='error'></span>
                    </div>

                    <div class='container'>
                        <label for='Password' >Password</label><br/>
                        <input id="inputreg" type='password' placeholder="Password" name='Password' id='Password' />
                    </div>

                    

                    <div class='container'>
                        <input style="margin-left: 60px;" type='submit' name='Submit' value='Submit'/>
                    </div>

                </fieldset>
            </form>
            <!-- client-side Form Validations:
Uses the excellent form validation script from JavaScript-coder.com-->

            <script type='text/javascript'>
                // <![CDATA[
                var pwdwidget = new PasswordWidget('thepwddiv','password');
                pwdwidget.MakePWDWidget();

                var frmvalidator  = new Validator("register");
                frmvalidator.EnableOnPageErrorDisplay();
                frmvalidator.EnableMsgsTogether();
                frmvalidator.addValidation("name","req","Please provide your name");

                frmvalidator.addValidation("email","req","Please provide your email address");

                frmvalidator.addValidation("email","email","Please provide a valid email address");

                frmvalidator.addValidation("password","req","Please provide a password");

                // ]]>
            </script>

            <!--
Form Code End (see html-form-guide.com for more info.)
-->

            </body>
        </html>