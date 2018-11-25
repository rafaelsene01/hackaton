<!-- Página para o admin da transportadora realizar o cadastro de uma nova empresa-->

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Cadastro de Empresa</title>
	<link rel="stylesheet" href="\Bus/css/estilo.css">
	<script src="js/js.js" type="text/javascript"></script>
</head>

<body>
	<?PHP include('../tela.php'); ?>

	<div class="container" align="center">
		<h1>Cadastro de Empresa</h1><br><br>
		<button><a href="empresas.php">listar</a></br></button>

		<!--Formulário de cadastro de empresa-->
		<form action="cadastrar.php" method="post" onSubmit="return valida_campos();">
			<table style="border-spacing: 0 12px">
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