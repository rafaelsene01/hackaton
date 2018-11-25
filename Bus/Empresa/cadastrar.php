<!-- Recebe dados de uma empresa atraves de um formulário e insere no banco de dados-->

<link rel="stylesheet" href="../css/estilo.css">
<?PHP
	include('../tela.php');
	# incluir arquivo de conexao
	include('../config.php');

	# Receber os dados vindos do formulário de cadastro da empresa
	$nome = ucwords($_POST['nome']); # Coloca a primeira letra da string em maiúsculo
	$email = $_POST['email'];
	$cnpj = $_POST['cnpj'];
	$cidade = $_POST['cidade'];

	#Insere dados da empresa e exibe mensagem caso ocorra erro no processo
	$in = mysqli_query($conexao,"insert into empresa (nome, email, cnpj, cidade) values ('$nome','$email', '$cnpj', '$cidade')") or die("Erro ao inserir dados de empresa");
?>
<!--Mensagem de sucesso -->
<div class="msg1 padding20">Cadastro realizado com sucesso</div>

<!--Redirecionamento à tela de cadastro de empresa -->
<script type="text/javascript">
	setTimeout("window.location='cadastro.php';",3000);
</script>