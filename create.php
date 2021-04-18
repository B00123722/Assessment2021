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
<div class="menu">
    <form action="" method="post" name="Login_Form" class="form-signin">
                <p class="sign" align="center">Pokédex</p>
                <input class="un " input name="PokemonName" type="text" id="inputPokemonname" class="form-control" placeholder="Pokemon Name" required autofocus>
                <input class="pass" input name="Level" type="number" id="inputLevel" class="form-control" placeholder="Level" required>
                <input class="un " input name="Location" type="text" id="inputLocation" class="form-control" placeholder="Location" required>


                <button name="Submit" value="Login" class="submit" type="submit" align="center">Add</button>
        </div>


<?php require_once '../template/footer.php';?>

</body>
</html>
