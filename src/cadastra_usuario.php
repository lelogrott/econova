<?php
    require("adm/common.php");

    if(!empty($_POST['email'])){
            $query = "INSERT INTO Usuario (nome, email, pontos, avaliacao, avatar, senha) VALUE (:nome, :email, :pontos, :avaliacao, :avatar, :senha)";
            
            $password = hash('sha256', $_POST['password']); 
            
            $query_params = array( 
                ':senha' => $password,  
                ':email' => $_POST['email'],
                ':nome' => $_POST['nome'],
                ':pontos' => $_POST['pontos'],
                ':avaliacao' => $_POST['avaliacao'],
                ':avatar' => $_POST['avatar']
            );
            try  { 
                $stmt = $db->prepare($query); 
                $result = $stmt->execute($query_params); 
            } 
            catch(PDOException $ex) { 
                die("Failed to run query." . $ex); 
            } 
            //header("Location: index.php"); 
            //die("Redirecting to index.php"); 
    }
?>

<html>

<body>

        <form method="post" id="registerForm"> 
            
            

            <label>Nome</label>
            <input id="name" name="nome" placeholder="Nome e Sobrenome" required="" tabindex="1" type="text"> 
             
            <label for="email">Email</label> 
            <input id="email" name="email" placeholder="exemplo@dominio.com" required="" type="email"> 
            
            <label>Pontos</label> 
            <input type="text" id="pontos" name="pontos" required=""> 

            <label>Avaliação</label> 
            <input type="text" id="avaliacao" name="avaliacao" required=""> 

            <label>Avatar</label> 
            <input type="text" id="avatar" name="avatar" required=""> 

            <label>Senha</label> 
            <input type="password" id="password" name="password" placeholder="senha..." required=""> 

            <input class="buttom" name="submit" id="submit" tabindex="5" value="Registrar!" type="submit">      
        </form> 
</body>

</html>