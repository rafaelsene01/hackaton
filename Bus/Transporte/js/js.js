function valida_campos(){
	//valida campos inseridos antes de enviar formulario
	if(document.getElementById('nome').value == '')	{
		alert('Preencha os campos obrigatórios.');
		document.getElementById('nome').focus();
		return false;
	}
	if(document.getElementById('email').value == '') {
		alert('Preencha os campos obrigatórios.');
		document.getElementById('email').focus();
		return false;
	}
	if(document.getElementById('cnpj').value == '') {
		alert('Preencha os campos obrigatórios.');
		document.getElementById('cnpj').focus();
		return false;
	}
	if(document.getElementById('cidade').value == '') {
		alert('Preencha os campos obrigatórios.');
		document.getElementById('cidade').focus();
		return false;
	}
}