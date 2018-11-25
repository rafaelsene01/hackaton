<!--Listagem de transportes cadastradas no bd, com opções de editar e excluir-->

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Lista de Transporte</title>
	<link rel="stylesheet" href="\Bus/css/estilo.css">
	<link rel="stylesheet" href="\Bus/css/blue/style.css">

	<script src="\Bus/js/jquery-latest.js"></script>
	<script src="\Bus/js/jquery.tablesorter.min.js"></script>
	<script src="\Bus/js/scripts.js"></script>
	<script src="js/js.js"></script>
</head>

<body>
	<?PHP include('../tela.php'); 
	$opcao  = isset($_POST['opcao']) ? $_POST['opcao'] : "";
	$busca  = isset($_POST['busca']) ? $_POST['busca'] : "";
	?>

	<div class="container" align="center">
		<h1 align="center">Transporte</h1><br><br><br><br>


		<form action="transportes.php" method="post">
			<select onchange="alteraElemento();" id="opcao" name="opcao" class="opcao" style="float: left; margin-left: 50px;">
				<option value="status_ocorrencia">Status Ocorrencia</option>
				<option value="id_empresa">Empresa</option>
				<option value="id_filial">Filial</option>
				<option value="data_ocorrencia">Data ocorrencia</option>
				<option value="fil_ser_ct_e">fil/ser/CT-e</option>
				<option value="data">Data</option>
				<option value="nf">NF</option>
				<option value="origem">Origem</option>
				<option value="destino">Destino</option>
				<option value="destinatario">Destinatario</option>
				<option value="data_agendamento">Data Agendamento</option>
				<option value="data_agendada_prog">Data Agendada Prog</option>
				<option value="transit_time">Transit Time</option>
				<option value="distancia">Distancia</option>
				<option value="motorista">Motorista</option>
				<option value="cavalo">Cavalo</option>
				<option value="carreta">Carreta</option>
				<option value="frota">Frota</option>
				<option value="dt">DT</option>
				<option value="ocorrencias">Ocorrencias</option>
				<option value="posicoes">Posições</option>
				<option value="status">Status</option>
				<option value="km">KM</option>
				<option value="horas_uteis">Horas Uteis</option>
			</select>
			<div id="parent" style="float: left;">
				<input type="text" name="busca" id="nome" class="busca">
			</div>

			<button type="submit" value="Pesquisar" style="margin-left: -50px;">Pesquisar</button>
		</form>

		<button class="botao"><a href="cadastro.php">Novo</a></button>


		<?PHP 	
		include('../config.php');
		?>



		<table style="border-spacing: 6px 12px" style="margin-left: 50px" id="table" class="tablesorter">
			<thead>
				<tr>
					<th><strong>Status</strong></th>
					<th><strong>Empresa</strong></th>
					<th><strong>Filial</strong></th>
					<th><strong>Data Ocorrência</strong></th>
					<th><strong>Fil/Ser/CT-e</strong></th>
					<th><strong>Data</strong></th>
					<th><strong>NF</strong></th>
					<th><strong>Origem</strong></th>
					<th><strong>Destino</strong></th>
					<th><strong>Destinatário</strong></th>
					<th><strong>Data Agendamento</strong></th>
					<th><strong>Data /agenda Prog</strong></th>
					<th><strong>Transit Time</strong></th>
					<th><strong>Distância</strong></th>
					<th><strong>Motorista</strong></th>
					<th><strong>Cavalo</strong></th>
					<th><strong>Carreta</strong></th>
					<th><strong>Frota</strong></th>
					<th><strong>DT</strong></th>
					<th><strong>Ocorrências</strong></th>
					<th><strong>Posições</strong></th>
					<th><strong>Status</strong></th>
					<th><strong>KM</strong></th>
					<th><strong>Hrs Uteis</strong></th>
					<th style="margin-left: 5px"><strong>#</strong></th>
					<th><strong>#</strong></th>
				</tr>
			</thead>

			<?PHP 	
			include('../config.php');

			#busca na tabela de transporte

			if(!isset($_POST['busca'])){
				session_start();
				if(isset($_SESSION['nome_sessao'])) {
					$result = mysqli_query($conexao, "SELECT * FROM transporte WHERE id_empresa = {$_SESSION['empresa_sessao']}") or die("Erro ao buscar dados de transportes");
				}
			} else {
				$result = mysqli_query($conexao, "SELECT * FROM transporte WHERE $opcao LIKE '%$busca%'") or die("Erro ao buscar dados de transportes");
			}
			
			while ($aux = $result->fetch_assoc()) {
				echo '<tr>';
						#echo '	<td>'.$aux["id"].'</td>';
				echo '	<td>'.$aux["status_ocorrencia"].'</td>';
				echo '	<td>'.$aux["id_empresa"].'</td>';
				echo '	<td>'.$aux["id_filial"].'</td>';
				echo '	<td>'.$aux["data_ocorrencia"].'</td>';
				echo '	<td>'.$aux["fil_ser_ct_e"].'</td>';
				echo '	<td>'.$aux["data"].'</td>';
				echo '	<td>'.$aux["nf"].'</td>';
				echo '	<td>'.$aux["origem"].'</td>';
				echo '	<td>'.$aux["destino"].'</td>';
				echo '	<td>'.$aux["destinatario"].'</td>';
				echo '	<td>'.$aux["data_agendamento"].'</td>';
				echo '	<td>'.$aux["data_agendada_prog"].'</td>';
				echo '	<td>'.$aux["transit_time"].'</td>';
				echo '	<td>'.$aux["distancia"].'</td>';
				echo '	<td>'.$aux["motorista"].'</td>';
				echo '	<td>'.$aux["cavalo"].'</td>';
				echo '	<td>'.$aux["carreta"].'</td>';
				echo '	<td>'.$aux["frota"].'</td>';
				echo '	<td>'.$aux["dt"].'</td>';
				echo '	<td>'.$aux["ocorrencias"].'</td>';
				echo '	<td>'.$aux["posicoes"].'</td>';
				echo '	<td>'.$aux["status"].'</td>';
				echo '	<td>'.$aux["km"].'</td>';
				echo '	<td>'.$aux["horas_uteis"].'</td>';
				echo '  <td><a href="'.$_SERVER["PHP_SELF"].'?id='.$aux["id"].'">Editar</a></td>';
				echo '  <td><a href="'.$_SERVER["PHP_SELF"].'?id='.$aux["id"].'">Excluir</a></td>';
				echo '</tr>';
			}

			?>
		</table>
	</div>
</body>
</html>