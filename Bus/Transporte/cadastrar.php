<!-- Recebe dados de um transporte de carga atraves de um formulário e insere no banco de dados-->

<link rel="stylesheet" href="../css/estilo.css">
<?PHP
	include('../tela.php');
	# incluir arquivo de conexao
	include('../config.php');

	# Receber os dados vindos do formulário de cadastro da empresa
	$id_empresa = ucwords($_POST['id_empresa']); # Coloca a primeira letra da string em maiúsculo
	$id_filial = $_POST['id_filial'];
	$status = $_POST['status'];
	$status_ocorrencia = $_POST['status_ocorrencia'];
	$data_ocorrencia = $_POST['data_ocorrencia'];
	$fil_ser_ct_e = $_POST['fil_ser_ct_e'];
	$data = $_POST['data'];
	$nf = $_POST['nf'];
	$origem = $_POST['origem'];
	$destino = $_POST['destino'];
	$destinatario = $_POST['destinatario'];
	$data_agendamento = $_POST['data_agendamento'];
	$data_agendada_prog = $_POST['data_agendada_prog'];
	$transit_time = $_POST['transit_time'];
	$distancia = $_POST['distancia'];
	$motorista = $_POST['motorista'];
	$cavalo = $_POST['cavalo'];
	$carreta = $_POST['carreta'];
	$frota = $_POST['frota'];
	$dt = $_POST['dt'];
	$ocorrencias = $_POST['ocorrencias'];
	$posicoes = $_POST['posicoes'];
	$km = $_POST['km'];
	$horas_uteis = $_POST['horas_uteis'];
	
	#Insere dados de transporte e exibe mensagem caso ocorra erro no processo
	$in = mysqli_query($conexao,"insert into transporte (id_empresa, id_filial, status_ocorrencia, data_ocorrencia, fil_ser_ct_e, data, nf, origem, destino, destinatario, data_agendamento, data_agendada_prog, transit_time, distancia, motorista, cavalo, carreta, frota, dt, ocorrencias, posicoes, status, km, horas_uteis) values ('$id_empresa','$id_filial','$status_ocorrencia', '$data_ocorrencia', '$fil_ser_ct_e','$data', '$nf', '$origem', '$destino','$destinatario', '$data_agendamento', '$data_agendada_prog', '$transit_time','$distancia', '$motorista', '$cavalo', '$carreta','$frota', '$dt', '$ocorrencias', '$posicoes', '$status', '$km', '$horas_uteis')") or die("Erro ao inserir dados de transporte");
?>
<!--Mensagem de sucesso -->
<div class="msg1 padding20">Cadastro realizado com sucesso</div>

<!--Redirecionamento à tela de cadastro de empresa -->
<script type="text/javascript">
	setTimeout("window.location='transportes.php';",3000);
</script>