<html>

<link rel="stylesheet" href="styles.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
     crossorigin="anonymous">

<?php
 
//importa o arquivo de configuração de conexão do MySQL
require "config.php";
 
//Recebe as informações do formulário de cadastro de Curso
$codigo=$_POST["Codigo"];
$nome=$_POST["Nome"];

//Comando SQL para inserir as informações na tabela Cursos
$insert = $pdo->prepare("INSERT INTO cursos(codigo, nome)
 values ('$codigo', '$nome')");
 
 //Executa o Comando SQL
 if($insert->execute()){
  echo " 
  
  <div class='container; p-3 mb-2 bg-dark text-white'>

          <table class='table table-dark table-striped'>
      
      <div class='container'>

          
              <thead>
                      <th scope='col' ; style='color: red; font-size: 40px;font-family: 'Times New Roman', Times, serif'>
                        <center> Inclusão feita com Sucesso!!!</center>
                      </th>

                      </thead>
                      
                      <th scope='col'>
          <a href='index.html' ;scope = 'col';> <center>Voltar ao Menu Principal</center> </a>
                    

                    <style>
      body {
        background: url(image.jpg);
    
        background-size: 100%;
      }
    </style>

  ";
  

}