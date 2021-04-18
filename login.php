<?php
require_once ('config.php');
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="../css/signin.css">

    <title>Sign in</title>
</head>

<body>
<div class="main">
    <form action="" method="post" name="Login_Form" class="form-signin">
    <p class="sign" align="center">Pokédex</p>
        <input class="un " input name="Username" type="username" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
        <input class="pass" input name="Password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>

        <button name="Submit" value="Login" class="submit" type="submit" align="center">Sign in</button>
</div>

</form>

    <?php

      if(isset($_POST['Submit']))
    {
        if( ($_POST['Username'] == $Username) && ($_POST['Password'] == $Password) )
        {

            $_SESSION['Username'] = $Username;
            $_SESSION['Active'] = true;
            header("location:index.php");
            exit;
        }
        else
            echo '<script>alert("Incorrect Username or Password")</script>';

    }
    ?>

<footer class="footer">
    <p>Pokemon Trading Card Management System</p>
</footer>

</div>

</body>
</html>
