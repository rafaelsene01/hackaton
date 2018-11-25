<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Menu Lateral</title>
	<link rel="stylesheet" href="\Bus/css/estilo.css">
	<script type="text/javascript">
		var barraLateralAtiva = false;

		function barraLateral(argument) {
			if(!barraLateralAtiva){
				document.getElementById("minhaTela").style.paddingLeft = "200px";
				document.getElementById("minhaTela").style.transition = "all .2s";
				
			}else{
				document.getElementById("minhaTela").style.paddingLeft = "0px";
			}
			barraLateralAtiva = !barraLateralAtiva;
		}
	</script>
</head>
<body>
	<div class="menu">
		<div class="barra1">
			<label id="icone" for="check" onclick="barraLateral()">	
				<img src="\Bus/imagens/icone.png">
			</label>
			<?PHP
			session_start();
			if(isset($_SESSION['nome_sessao'])) {
			?>
			<div style="text-align: center; margin-top: -5px;"><h2><?PHP echo 'Seja bem vindo '.$_SESSION['nome_sessao']; ?></h2></div>		
			<?PHP
			}
			?>		
	</div>

	<input type="checkbox" id="check">
	<div class="barra">
		<nav>
			<a href="\Bus/Login/login.php">
				<div class="link">Login</div>
			</a>
			<a href="\Bus/Usuario/cadastro.php">
				<div class="link">Usuário</div>
			</a>
			<a href="\Bus/Empresa/cadastro.php">
				<div class="link">Empresa</div>
			</a>
			<a href="\Bus/Filial/cadastro.php">
				<div class="link">Filial</div>
			</a>
			<a href="\Bus/Transporte/cadastro.php">
				<div class="link">Transporte</div>
			</a>
			<a href="\Bus/Login/logout.php">
				<div class="link">Logout</div>
			</a>
		</nav>
	</div>
</div>

</body>
</html>