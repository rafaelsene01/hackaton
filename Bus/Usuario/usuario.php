<!--Listagem de empresas cadastradas no bd, com opções de editar e excluir-->

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Lista de Usuarios</title>
        <link rel="stylesheet" href="../css/estilo.css">
	</head>

	<body>
		<?PHP include('../tela.php'); ?>

		<div style="margin-top: 100px;" align= "center">
			<h1 align= "center">Usuarios</h1><br><br>
			<button align= "center"> <a href="cadastro.php">Novo</a> </button>
			<table align= "center" style="border-spacing: 6px 12px" style="margin-left: 50px">
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

					#busca na tabela de empresas
					$result = mysqli_query($conexao, "SELECT * FROM empresa") or die("Erro ao buscar dados de empresa");
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