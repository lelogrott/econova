<?php

    require("adm/common.php");


     if(empty($_SESSION['usuario'])) { 
        #header("Location: index.php"); 
        die("home.php"); 
    }

    $usuario = $_SESSION['usuario'];


    $query = "SELECT 1 from Usuario WHERE email = :email";
    $query_params = array( 
        ':email' => $usuario->_email; 
    ); 
     
    try { 
        $stmt = $db->prepare($query); 
        $result = $stmt->execute($query_params); 
    } 
    catch(PDOException $ex) { 
        //die("Failed to run query."); 
    } 
     
    $row = $stmt->fetch(); 
    

    if($row) {
        $query = "INSERT INTO Coleta (idUsuario, idCooperativa, dataAbertura, endereco) VALUE (:idUsuario, :idCooperativa, :dataAbertura, :endereco)";


        list($month, $day, $year) = split('/', $_POST['data']);
        $timeStamp = mktime(0, 0, 0, $month, $day, $year);  

        $query_params = array( 
            ':idUsuario' => $row['idUsuario'], 
            //':idUsuario' => 2, 
            ':idCooperativa' => $_GET['idCoop'],
            ':dataAbertura' => $timeStamp,
            ':endereco' => $row['endereco']
            //':endereco' => "rua xyz"
        );

        try  { 
            $stmt = $db->prepare($query); 
            $result = $stmt->execute($query_params); 
        }
        catch(PDOException $ex) { 
            die("Failed to run query." . $ex); 
        } 

        header("Location: index.php"); 

        die("Redirecting to index.php"); 

    }
    
?>

<html>

<body>

<div class="container">
   <form method="post" id="registerForm"> 
        <label>Data</label>
        <input id="data" name="data" placeholder="DD/MM/YYYY" required="" tabindex="1" type="text"> 

        <input class="buttom" name="submit" id="submit" tabindex="5" value="Registrar!" type="submit">      
    </form> 
</div>
</body>

</html>
