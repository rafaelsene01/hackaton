<link rel="stylesheet" href="\Bus/css/estilo.css">
<?PHP
include('../tela.php');
# Destruir todas as sessões do navegador
session_destroy(); 
?>

<!--Mensagem de sucesso-->
<div class="msg1 padding20" style="margin-top: 35px;">Logout efetuado com sucesso!<br><br>Redirecionando para a página inicial...</div>

<!--Redirecionamento à tela de cadastro de empresa -->
<script type="text/javascript">
	setTimeout("window.location='../index.php';",3000);
</script>