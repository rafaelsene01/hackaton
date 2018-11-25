<?PHP
	include('../config.php');
	include('../tela.php');

	# Validar os dados do usuário
	function anti_sql_injection($string) {
		include('../config.php');
		$string = stripslashes($string);
		$string = strip_tags($string);
		$string = mysqli_real_escape_string($conexao, $string);
		return $string;
	}

	$sql = mysqli_query($conexao,"select * from usuario where nome='".anti_sql_injection($_POST['usuario'])."' and senha='".anti_sql_injection(hash('sha512', ($_POST['senha'])))."' limit 1") or die("Erro");
	$linhas = mysqli_num_rows($sql);
	if($linhas == '') {
?>
        <div class="msg2 padding20" style="margin-top: 30px;">Usuário não encontrado ou usuário e senha inválidos.</div>

	<!--Redirecionamento à tela de cadastro de empresa -->
	<script type="text/javascript">
		setTimeout("window.location='login.php';",3000);
	</script>
<?PHP
	} else {
		while($dados=mysqli_fetch_assoc($sql)) {
			session_start();
			$_SESSION['id_sessao'] = $dados['id'];
			$_SESSION['nome_sessao'] = $dados['nome'];
			$_SESSION['empresa_sessao'] = $dados['id_empresa'];
			header("Location: \Bus/tela.php");
		}
	}
?>