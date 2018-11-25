<!--Listagem de filiais cadastradas no bd, com opções de editar e excluir-->

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Lista de Filiais</title>
        <link rel="stylesheet" href="\Bus/css/style.css">
        <link rel="stylesheet" href="\Bus/css/estilo.css">
	</head>

	<body>
		<?PHP include('../tela.php'); ?>

		<div class="container" align="center">
			<h1>Filiais</h1><br><br>
			<button><a href="cadastro.php">Novo</a></button>
			<table style="border-spacing: 6px 12px" style="margin-left: 50px">
				<tr>
					<td><strong>#</strong></td>
					<td><strong>Nome</strong></td>
					<td><strong>E-mail</strong></td>
					<td><strong>CPF</strong></td>
					<td><strong>Cidade</strong></td>
					<td style="margin-left: 5px"><strong>#</strong></td>
					<td><strong>#</strong></td>
				</tr>

				<?PHP 	
					include('../config.php');

					#busca na tabela de filiais
					$result = mysqli_query($conexao, "SELECT * FROM filial") or die("Erro ao buscar dados de empresa");
					while ($aux = $result->fetch_assoc()) {
					   	echo '<tr>';
						echo '	<td>'.$aux["id"].'</td>';
						echo '	<td>'.$aux["nome"].'</td>';
						echo '	<td>'.$aux["email"].'</td>';
						echo '	<td>'.$aux["cnpj"].'</td>';
						echo '	<td>'.$aux["cidade"].'</td>';
						echo '  <td><a href="'.$_SERVER["PHP_SELF"].'?id='.$aux["id"].'">Editar</a></td>';
						echo '  <td><a href="'.$_SERVER["PHP_SELF"].'?id='.$aux["id"].'">Excluir</a></td>';
					   	echo '</tr>';
					}

				?>
			</table>
		</div>
	</body>
</html>