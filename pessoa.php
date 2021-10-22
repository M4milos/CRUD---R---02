<!DOCTYPE html>
<?php 
   include_once "conf/default.inc.php";
   require_once "conf/Conexao.php";
   $title = "Dados pessoas";
   $find = isset($_POST["find"]) ? $_POST["find"] : ""; 
   $tipo = isset($_POST["tipo"]) ? $_POST["tipo"] : 2; 
?>
<html>
<head>
    <meta charset="UTF-8">
    <title> <?php echo $title; ?> </title>
</head>
<body>
    <?php include "menu.php"; ?>
    <form method="post">
    <fieldset>
        <legend><?php echo $title ?></legend>
        <input type="text"   name="find" id="find" size="37" value="<?php echo $find;?>">
        <input type="submit" name="acao"     id="acao">
        <br><br>

        <legend>Método de pesquisa: </legend>
        <input type="radio" name="tipo" value="1" <?php if ($tipo == 1){echo 'checked';}?>> 
        <label for="id">Id</label>
        <input type="radio" name="tipo" value="2" <?php if ($tipo == 2){echo 'checked';}?>>
        <label for="nome">Nome</label>
        <input type="radio" name="tipo" value="3" <?php if ($tipo == 3){echo 'checked';}?>>
        <label for="idade">Idade</label>

        <table>
    <tr>
        <td><b>Id</b>
        </td><td><b>Nome</b>
        </td><td><b>Hora de entrada</b>
        </td><td><b>Hora de saída</b></td>
        </td><td><b>Idade</b></td>
    </tr>
        <?php
            $pdo = Conexao::getInstance();
            if ($tipo == 1 ) 
           
            $consulta = $pdo->query("SELECT * FROM pessoa 
                                     WHERE id <= $find 
                                     ORDER BY id");
            elseif($tipo == 2 )
            $consulta = $pdo->query("SELECT * FROM pessoa 
                                     WHERE nome like '$find%'
                                     ORDER BY nome");
            else
            $consulta = $pdo->query("SELECT * FROM pessoa 
                                     WHERE idade <= $find
                                     ORDER BY idade");
            while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) { 
        ?>
        <tr><td><?php echo $linha['id'];?></td>
            <td><?php echo $linha['nome'];?></td>
            <td><?php echo $linha['horaEntrada'];?></td>
            <td><?php echo $linha['horaSaida'];?></td>
            <td><?php echo $linha['idade'];?></td>
        </tr>
            <?php } ?>       
        </table>
    </fieldset>
    </form>
</body>
</html>