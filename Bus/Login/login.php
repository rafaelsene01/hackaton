<!--Página de Login-->

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Login</title>
        <link rel="stylesheet" href="style.css">
	</head>

	<body>

		<div class="login">
			<img src="\Bus/imagens/man.svg" height="64" width="64">
			<form action="valida.php" method="post">
				<table style="border-spacing: 6px 12px">
					<tr>
						<td><label for="usuario">Usuario </label></td>
			    		<td><input type="text" name="usuario" id="usuario"></td>
			    	</tr>
					<tr>
						<td><label for="senha">Senha </label></td>
			    		<td><input type="password" name="senha" id="senha"></td>
			    	</tr>
			    </table>
				
			  <br><button type="submit" value="Login" class="but_comando">Logar</button>
			</form>
		</div>
	</body>
</html>