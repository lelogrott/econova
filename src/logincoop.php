<?php
	require ("adm/common.php");

	if(empty($_SESSION['user'])) { 
        header("Location: index.php"); 
        die("Redirecting to index.php"); 
    }

    $cooperativa = new Cooperativa($_SESSION['user']['email'], $_SESSION['user']['id']);
    $_SESSION['usuario'] = $cooperativa;

    header("Location: home.php"); 
    die("Redirecting to home.php"); 
?>