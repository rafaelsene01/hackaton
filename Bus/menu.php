<?PHP
	session_start();
	if(isset($_SESSION['nome_sessao'])) {
?>
        <div class="padding20"><?PHP echo 'Seja bem vindo '.$_SESSION['nome_sessao']; ?></div>
        <link rel="stylesheet" href="\Bus/css/estilo.css">
		<div class="menu">Menu</div>
		<button class="but_menu" formaction="comprarPassagem.php"><a href="comprarPassagem.php">Comprar Passagem</a></button>
		<button class="but_menu"><a href="\Bus/Login/logout.php">Logout</a></button>
<?PHP
	}else{
?>		
		<link rel="stylesheet" href="\Bus/css/estilo.css">
		<div class="menu">Menu</div>
		<button class="but_menu"><a href="\Bus/Login/login.php">Login</a></button>
		<button class="but_menu"><a href="\Bus/Empresa/empresas.php">Empresas</a></button>
		<button class="but_menu"><a href="\Bus/Filial/filiais.php">Filial</a></button>
		<button class="but_menu"><a href="\Bus/Transporte/transportes.php">Transporte</a></button>
<?PHP
	}
?>

