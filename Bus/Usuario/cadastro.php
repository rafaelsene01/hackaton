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

		<div style="margin-top: 100px;" align= "center">
			<h1 align= "center">Cadastro de Usuario</h1><br><br>
			<button align= "center"> <a href="usuario.php">listar</a> </button></br>

			<!--Formulário de cadastro de empresa-->
			<form action="cadastrar.php" method="post" onSubmit="return valida_campos();">
				<table  style="border-spacing: 0 12px">
					<td><label for="id_empresa"">* Empresa </label></td>
					<td>
						<select name="id_empresa" id="id_empresa">
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
						<td><label for="usuario">* Usuário </label></td>
						<th><input type="text" name="usuario" id="usuario"></td>
					</tr>
					<tr>
						<td><label for="senha">* Senha </label></td>
						<td><input type="password" name="senha" id="senha"></td>
					</tr>
					<tr>
						<td><label for="senha2">* Confirmar senha </label></td>
						<td><input type="password" name="senha2" id="senha2"></td>
					</tr>
				</table>
				<br><button type="submit" value="Cadastrar" class="but_comando">Cadastrar</button>
			</form>
		</div>
	</body>
</html>