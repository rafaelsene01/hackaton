<!-- Recebe dados de uma empresa atraves de um formulário e insere no banco de dados-->

<link rel="stylesheet" href="../css/estilo.css">
<?PHP
	include('../tela.php');
	# incluir arquivo de conexao
	include('../config.php');

	# Receber os dados vindos do formulário de cadastro da empresa
	$id_empresa = $_POST['id_empresa'];
	$nome = $_POST['usuario'];
	$senha = hash('sha512', ($_POST['senha']));

	#Insere dados da empresa e exibe mensagem caso ocorra erro no processo
	$in = mysqli_query($conexao,"insert into usuario (id_empresa, nome, senha) values ('$id_empresa','$nome','$senha')") or die("Erro ao inserir dados de usuario");
?>
<!--Mensagem de sucesso -->
<div class="msg1 padding20">Cadastro realizado com sucesso</div>

<!--Redirecionamento à tela de cadastro de empresa -->
<script type="text/javascript">
	setTimeout("window.location='cadastro.php';",3000);
</script>