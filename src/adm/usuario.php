<?php

class Usuario {
    protected $_email;
    protected $_id;

    public function __construct($email, $id) {
       $this->_email = $email;
       $this->_id = $id;
    }

    public function getNome($db) {
        $query = "SELECT nome FROM Usuario WHERE email = :email";
        $query_params = array(
            ':email' => $this->_email
        );

        try { 
            $stmt = $db->prepare($query); 
            $result = $stmt->execute($query_params); 
        } 
        catch(PDOException $ex) { 
            // Change this later
            die("Failed to run query." . $ex); 
        }

        $rows = $stmt->fetch();
        return $rows['nome'];
    }

    public function getID() {
        return $this->_id;
    }

    public function getAvaliacao($db) {
        $query = "SELECT avaliacao FROM Usuario WHERE email = :email";
        $query_params = array(
            ':email' => $this->_email
        );

        try { 
            $stmt = $db->prepare($query); 
            $result = $stmt->execute($query_params); 
        } 
        catch(PDOException $ex) { 
            // Change this later
            die("Failed to run query." . $ex); 
        }

        $rows = $stmt->fetch();
        return $rows['avaliacao'];
    }

    public function getPontos($db) {
        $query = "SELECT pontos FROM Usuario WHERE email = :email";
        $query_params = array(
            ':email' => $this->_email
        );

        try { 
            $stmt = $db->prepare($query); 
            $result = $stmt->execute($query_params); 
        } 
        catch(PDOException $ex) { 
            // Change this later
            die("Failed to run query." . $ex); 
        }

        $rows = $stmt->fetch();
        return $rows['pontos'];
    }
}

?>