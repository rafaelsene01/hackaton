<!-- Recebe dados de uma filial atraves de um formulário e insere no banco de dados-->

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
	$empresa = $_POST['empresa'];

	#Insere dados da filial e exibe mensagem caso ocorra erro no processo
	$in = mysqli_query($conexao,"insert into filial (nome, email, cnpj, cidade, id_empresa) values ('$nome','$email', '$cnpj', '$cidade', '$empresa')") or die("Erro ao inserir dados de filial");
?>
<!--Mensagem de sucesso-->
<div class="msg1 padding20" >Cadastro realizado com sucesso</div>

<!--Redirecionamento à tela de cadastro de empresa -->
<script type="text/javascript">
	setTimeout("window.location='filiais.php';",3000);
</script>