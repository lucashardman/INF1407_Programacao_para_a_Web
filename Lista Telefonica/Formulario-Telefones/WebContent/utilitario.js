/**
 * 
 */

onload = inicia;

function inicia(){
	document.getElementById('idAdicionarTel').addEventListener('click', adicionaTel);
	
	/** variável global - contador de telefones criados */
	contadorTel = 0;
	
}

function adicionaTel(){
	console.log("Vou adicionar telefone");
	
	/* criando o div para armazenar o select, o input e a lata de lixo*/
	var objDiv = document.createElement("div");
	objDiv.setAttribute("id", "divTel" + contadorTel);
	
	/* criando o campo select */
	var objSelect = document.createElement("select");
	objSelect.setAttribute("name", "tipoTel" + contadorTel);
	var opcao = document.createElement("option");
	opcao.text = "Pessoal";
	objSelect.add(opcao);
	var opcao = document.createElement("option");
	opcao.text = "Comercial";
	objSelect.add(opcao);
	var opcao = document.createElement("option");
	opcao.text = "Personalizar";
	objSelect.add(opcao);	
	
	var objTexto = document.createTextNode(" ");
		
	/* criando o campo input */
	var objInput = document.createElement("input");
	objInput.setAttribute("type", "text");
	objInput.setAttribute("name", "tel" + contadorTel);
	objInput.addEventListener("blur", confereTelefone);
	
	/*criando a lata de lixo */
	var objImagem = document.createElement("img");
	objImagem.setAttribute("src", "img/lixeira.jpg");
	objImagem.width = 15;
	objImagem.height = 15;
	objImagem.addEventListener("click", removeTel);
	
	objDiv.appendChild(objSelect);
	objDiv.appendChild(objTexto);
	objDiv.appendChild(objInput);
	objDiv.appendChild(document.createTextNode(" "));
	objDiv.appendChild(objImagem);
	document.getElementById("idTel").appendChild(objDiv);
	
	console.log("contadorTel = " + contadorTel);
	contadorTel++;
	
	document.getElementById("idQtdTel").setAttribute("value", contadorTel);
}


function removeTel(evento){
	
	var base = document.getElementById("idTel");
	var objLataDoLixo = evento.target;
	var objDivPai = objLataDoLixo.parentNode;
	
	console.log("vai remover um telefone " + objDivPai.getAttribute("id"));
	
	base.removeChild(objDivPai);
	
	//document.getElementById("idEmail").removeChild(evento.target.parentNode);
}

function confereTelefone(evento) {
	console.log("Checando se está no padrão: " + evento.target.getAttribute("name"));
	
	var campo = evento.target.value;
	console.log(campo);
	
	//var reTel = /\(\d\d\) ?[\d]{4,5}-?[\d]{4}/; //Regex de telefone (espaços e traço opicional)
	var reTel = /\(\d\d\) 9?[\d]{4}-?[\d]{4}/;
	evento.target.style.borderStyle = "solid";
	
	if(reTel.test(campo)){
		evento.target.style.borderColor = "#66ff33";
	}
	else{
		evento.target.style.borderColor = "#ff0000";
	}
	
	
}