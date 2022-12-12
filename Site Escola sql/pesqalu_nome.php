<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="styles.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
  crossorigin="anonymous">

<title>Lista dos Alunos por Nome</title>

 <style>
  body {
    background: url(image.jpg);

    background-size: 100%;
  }

  div {

border-radius: 50px;
padding-top: 30px;
padding-left: 250px;
padding-right: 250px;




  }
  
</style>
 
</head>
<div class="container; p-3 mb-2 bg-dark text-white">

<table class="table table-dark table-striped">

<thead>
        <th scope="col" ; style="color: red; font-size: 40px;font-family: 'Times New Roman', Times, serif">
          <center> Lista Geral de Alunos</center>
        </th>

      </thead>
    </table>
    </font>

<body>
<?php
 
//importa o arquivo de configuração de conexão do MySQL
require "config.php";

$nome=$_POST["txtNome"];

 
$consulta = $pdo->prepare("SELECT * FROM alunos WHERE nome like '$nome%' order by nome");
$consulta->execute();
 
?>

 <table class="table table-dark table-striped">
      <thead>
        <tr>

        </tr>
        <tr>
 
  <tr>
    <th>Matrícula</th>
    <th>Nome</th>
    <th>Endereço</th>
    <th>Cidade</th>
    <th>Código do Curso</th>
  </tr>

  
<?php
//Exibe as linhas encontradas na consulta
while($row = $consulta->fetch(PDO::FETCH_ASSOC)) {
?>
 
<tr>
<td><?php echo $row['matricula'];?></td>
<td><?php echo $row['nome'];?></td>
<td><?php echo $row['endereco'];?></td>
<td><?php echo $row['cidade'];?></td>
<td><?php echo $row['codcurso'];?></td>
</tr>
 

<?php
}
?>
 

 
<p> <p>
</table>

<style>
body{
    text-align: center;
}
</style>

<th scope="col">
              <a href="index.html" ;scope = "col"; style="color: red;">Voltar ao Menu Principal
          </th>
    
        
 
</body>
</html>