<!DOCTYPE html>
<?php 
   include_once "conf/default.inc.php";
   require_once "conf/Conexao.php";
   $title = "Dados peças";
   $procurar = isset($_POST["procurar"]) ? $_POST["procurar"] : "";
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
        <input type="text"   name="procurar" id="procurar" size="37" value="<?php echo $procurar;?>">
        <input type="submit" name="acao"     id="acao">
        <br><br>


        <legend>Método de pesquisa: </legend>
        <input type="radio" name="tipo" value="1" <?php if ($tipo == 1){echo 'checked';}?>> 
        <label for="id">Id</label>
        <input type="radio" name="tipo" value="2" <?php if ($tipo == 2){echo 'checked';}?>>
        <label for="descricao">Descrição</label>
        <input type="radio" name="tipo" value="3" <?php if ($tipo == 3){echo 'checked';}?>>
        <label for="valor">Valor</label>
        <input type="radio" name="tipo" value="4" <?php if ($tipo == 4){echo 'checked';}?>>
        <label for="fornecedor">Fornecedor</label>


        
        <table>
        <tr><td><b>Id</b></td><td><b>Descrição</b></td><td><b>Valor</b></td><td><b>Fornecedor</b></td><td><b>Garantia</b></td> </tr>
        <?php
            $pdo = Conexao::getInstance();
            if ($tipo == 1 ) 
           
            $consulta = $pdo->query("SELECT * FROM peca 
                                     WHERE id = $procurar 
                                     ORDER BY id");
            elseif($tipo == 2 )
            $consulta = $pdo->query("SELECT * FROM peca 
                                     WHERE descricao like '$procurar%'
                                     ORDER BY descricao");
            elseif($tipo == 3)
            $consulta = $pdo->query("SELECT * FROM peca 
                                     WHERE valor <= $procurar
                                     ORDER BY valor");
            else
            $consulta = $pdo->query("SELECT * FROM peca 
                                     WHERE fornecedor like '$procurar%'
                                     ORDER BY fornecedor");

            while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
        ?>
        <tr><td><?php echo $linha['id'];?></td>
            <td><?php echo $linha['descricao'];?></td>
            <td><?php echo number_format($linha['valor'],2, ',' , '.');?></td>
            <td><?php echo $linha['fornecedor'];?></td>
            <td><?php echo date("d/m/Y",strtotime($linha['garantia']));?></td>
        </tr>
            <?php } ?>       
        </table>
    </fieldset>
    </form>
</body>
</html>