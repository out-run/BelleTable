<?php
session_start();
if(!isset($_SESSION["pseudo"])){header("Location:formConnectj.php");}
$id=mysqli_connect("localhost","root","","belle_table");
$req2="select * from questions order by rand() limit 10";
$ligne=mysqli_query($id,$req2);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QCM</title>
    <link rel="shortcut icon" type="image/png" href="logo_Belletable.png">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Candidature pour <?=$_SESSION["libelleeOffreChoisi"];?></h1><hr><br>
    <p>Afin de déposer votre candidature pour cette offre d'emploi veuillez répondre au questionnaire ci-dessous, si la note obtenue est supérieur ou égale à 10 sur 20 vous êtes donc éligible.</p>
    <h2>QCM</h2><br>
    

    <a id='BoutonDeconnexion' href='deconnexion.php'>Deconnexion</a>
</body>
</html>