<!-- Página para o admin da transportadora realizar o cadastro de um novo transporte-->

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Cadastro de Transporte</title>
	<link rel="stylesheet" href="\Bus/css/estilo.css">
	<script src="js/js.js" type="text/javascript"></script>
</head>

<body>
	<?PHP include('../tela.php'); ?>

	<?php $data = date("d/m/Y");?>
	
	<div class="container" align="center" id="minhatela">
		<h1>Cadastro de Transporte</h1><br><br>
		<button><a href="transportes.php">listar</a></button>
		
		<!--Formulário de cadastro de transporte-->
		<form action="cadastrar.php" method="post" onSubmit="return valida_campos();">
			<table style="border-spacing: 0 12px">
				<tr>
					<td><label for="id_empresa"">* Empresa </label></td>
					<td>
						<select name="id_empresa" id="id_empresa" onchange="atualizarFiliais()">
							<?PHP 	
							include('../config.php');

								#busca como opções do select as empresas cadastradas no bd
							$result = mysqli_query($conexao, "SELECT nome, id FROM empresa") or die("Erro ao buscar dados de empresa");
							while ($aux = $result->fetch_assoc()) {?>
								<option value="<?PHP echo $aux['id'] ?>"> <?PHP echo $aux['nome'] ?></option>";
								<?PHP }

								?>				
							</select>
						</td>
					</tr>
					<tr>
						<td><label for="id_filial"">* Filial </label></td>
						<td>
							<select name="id_filial" id="id_filial">
								<?PHP 	
								include('../config.php');

									#busca como opções do select as filiais cadastradas no bd referentes a empresa selecionada
								$result = mysqli_query($conexao, "SELECT nome, id FROM filial") or die("Erro ao buscar dados de filial");
								while ($aux = $result->fetch_assoc()) {?>
									<option value="<?PHP echo $aux['id'] ?>"> <?PHP echo $aux['nome'] ?></option>";
									<?PHP }

									?>				
								</select>
							</td>
						</tr>
						<tr>
							<td><label for="status_ocorrencia">* Status </label></td>
							<td>
								<select name="status_ocorrencia" id="status_ocorrencia">
									<option value="realizada">ENTREGA REALIZADA NORMALMENTE</option>";
									<option value="gerado">CTE GERADO</option>";
									<option value="destino">CHEGADA NO DESTINO</option>";
									<option value="agendada">CARGA AGENDADA</option>";	
								</select>
							</td>
						</tr>
						<tr>
							<td><label for="data_ocorrencia">* Horario de Saída </label></td>
							<td><input id="data_ocorrencia" type="datetime-local" value="2018-11-24T00:00" name="data_ocorrencia" min="<?php echo $data; ?>" max="2027-06-30T16:30"></td>
						</tr>
						<tr>
							<td><label for="fil_ser_ct_e">* fil/ser/CT-e </label></td>
							<td><input type="text" name="fil_ser_ct_e" id="fil_ser_ct_e"></td>
						</tr>
						<tr>
							<td><label for="data">* Data </label></td>
							<td><input id="data" type="date" value="2018-11-24" name="data" min="<?php echo $data; ?>" max="2027-06-30"></td>
						</tr>
						<tr>
							<td><label for="nf">* Nota Fiscal </label></td>
							<td><input type="text" name="nf" id="nf"></td>
						</tr>
						<tr>
							<td><label for="origem">* Origem </label></td>
							<td><input type="text" name="origem" id="origem"></td>
						</tr>
						<tr>
							<td><label for="destino">* Destino </label></td>
							<td><input type="text" name="destino" id="destino"></td>
						</tr>
						<tr>
							<td><label for="destinatario">* Destinatario </label></td>
							<td><input type="text" name="destinatario" id="destinatario"></td>
						</tr>
						<tr>
							<td><label for="data_agendamento">* Data Agendadamento </label></td>
							<td><input id="data_agendamento" type="datetime-local" value="2018-11-24T00:00" name="data_agendamento" min="<?php echo $data; ?>" max="2027-06-30T16:30"></td>
						</tr>
						<tr>
							<td><label for="data_agendada_prog">* Data Agendada Prog </label></td>
							<td><input id="data_agendada_prog" type="datetime-local" value="2018-11-24T00:00" name="data_agendada_prog" min="<?php echo $data; ?>" max="2027-06-30T16:30"></td>
						</tr>
						<tr>
							<td><label for="transit_time">* Transit Time </label></td>
							<td><input id="transit_time" type="datetime-local" value="2018-11-24T00:00" name="transit_time" min="<?php echo $data; ?>" max="2027-06-30T16:30"></td>
						</tr>
						<tr>
							<td><label for="distancia">* Distancia </label></td>
							<td><input type="number" name="distancia" id="distancia"></td>
						</tr>
						<tr>
							<td><label for="motorista">* Motorista </label></td>
							<td><input type="text" name="motorista" id="motorista"></td>
						</tr>
						<tr>
							<td><label for="cavalo">* Cavalo </label></td>
							<td><input type="number" name="cavalo" id="cavalo"></td>
						</tr>
						<tr>
							<td><label for="carreta">* Carreta </label></td>
							<td><input type="number" name="carreta" id="carreta"></td>
						</tr>
						<tr>
							<td><label for="frota">* Frota </label></td>
							<td><input type="text" name="frota" id="frota"></td>
						</tr>
						<tr>
							<td><label for="dt">* DT </label></td>
							<td><input type="number" name="dt" id="dt"></td>
						</tr>
						<tr>
							<td><label for="ocorrencias">* Ocorrências </label></td>
							<td><input type="text" name="ocorrencias" id="ocorrencias"></td>
						</tr>
						<tr>
							<td><label for="posicoes">* Posições </label></td>
							<td><input type="text" name="posicoes" id="posicoes"></td>
						</tr>
						<tr>
							<td><label for="status"">* Status </label></td>
							<td>
								<select name="status" id="status">
									<option value="NO PRAZO">NO PRAZO</option>";
									<option value="ENCERRADA">ENCERRADO</option>";
									<option value="atrasado">ATRAZADO</option>";
								</select>
							</td>
						</tr>
						<tr>
							<td><label for="km">* KM </label></td>
							<td><input type="number" name="km" id="km"></td>
						</tr>
						<tr>
							<td><label for="horas_uteis">* Horas Uteis </label></td>
							<td><input type="number" name="horas_uteis" id="horas_uteis"></td>
						</tr>
					</table>
					<br><button type="submit" value="Cadastrar" class="but_comando">Cadastrar</button>
				</form>
			</div>
		</body>
		</html>