//valida campos inseridos antes de enviar formulario
function valida_campos(){
	alert("aaa");
	if(document.getElementById('id_empresa').value == '')	{
		alert('Preencha os campos obrigatórios.');
		document.getElementById('id_empresa').focus();
		return false;
	}
	if(document.getElementById('usuario').value == '') {
		alert('Preencha os campos obrigatórios.');
		document.getElementById('usuario').focus();
		return false;
	}
	if(document.getElementById('senha').value == '') {
		alert('Preencha os campos obrigatórios.');
		document.getElementById('senha').focus();
		return false;
	}
	if(document.getElementById('senha2').value == '') {
		alert('Preencha os campos obrigatórios.');
		document.getElementById('senha2').focus();
		return false;
	}
	if(document.getElementById('senha2').value.length < 6) {
		alert('Senha não pode ser menor que seis caracteres.');
		document.getElementById('senha2').focus();
		return false;
	}
	if(document.getElementById('senha').value.length < 6) {
		alert('Senha não pode ser menor que seis caracteres.');
		document.getElementById('senha').focus();
		return false;
	}
	if(document.getElementById('senha').value != document.getElementById('senha2').value) {
		alert('As senhas não conferem.');
		document.getElementById('senha').focus();
		return false;
	}
}