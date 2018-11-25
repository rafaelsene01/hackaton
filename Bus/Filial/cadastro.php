<!-- Página para o admin da transportadora realizar o cadastro de uma nova filial-->

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Cadastro de Filial</title>
	<link rel="stylesheet" href="\Bus/css/estilo.css">
	<script src="js/js.js" type="text/javascript"></script>
</head>

<body>
	<?PHP include('../tela.php'); ?>

	<div class="container" align="center">
		<h1>Cadastro de Filial</h1><br><br>
		<button><a href="filiais.php">listar</a></button>

		<!--Formulário de cadastro de filial-->
		<form action="cadastrar.php" method="post" onSubmit="return valida_campos();">
			<table style="border-spacing: 0 12px">
				<tr>
					<td><label for="empresa"">* Empresa </label></td>
					<td>
						<select name="empresa" id="empresa">
							<?PHP 	
							include('../config.php');
							#busca como opções do select as empresas cadastradas no bd
							$result = mysqli_query($conexao, "SELECT * FROM empresa") or die("Erro ao buscar dados de empresa");
							while ($aux = $result->fetch_assoc()) {?>
								<option value="<?PHP echo $aux['id'] ?>"> <?PHP echo $aux['nome'] ?></option>";
								<?PHP }

								?>				
							</select>
						</td>
					</tr>
					<tr>
						<td><label for="nome"">* Nome </label></td>
						<td><input type="text" name="nome" id="nome"></td>
					</tr>
					<tr>
						<td><label for="email">* E-mail </label></td>
						<td><input type="text" name="email" id="email"></td>
					</tr>
					<tr>
						<td><label for="cnpj">* CNPJ </label></td>
						<td><input type="text" name="cnpj" id="cnpj"></td>
					</tr>
					<tr>
						<td><label for="cidade">* Cidade </label></td>
						<td><input type="text" name="cidade" id="cidade"></td>
					</tr>
				</table>
				<br><button type="submit" value="Cadastrar" class="but_comando">Cadastrar</button>
			</form>
		</div>
	</body>
	</html>