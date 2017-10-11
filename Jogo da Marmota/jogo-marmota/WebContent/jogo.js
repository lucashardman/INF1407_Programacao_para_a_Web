/**
 * 
 */

onload = generateMarmota;

function generateMarmota(){
	setInterval(printMarmota, 5000);
	
}


function tiraMarmota (buraco){
	console.log("Esperando");
	buraco.src="img/buraco.jpg";
}
 

function printMarmota(){
	
	var num = Math.floor(Math.random() * 3) + 1;
	var marmota;
	console.log(num);
	
	if (num == 1){
		marmota = document.getElementById("idBuraco1").src="img/marmota.jpg";
		document.getElementById("idBuraco1").addEventListener("click", function(){console.log("PONTO!!!!");});
		setTimeout(tiraMarmota, 4000, document.getElementById("idBuraco1"));
	}
	if (num == 2){
		marmota = document.getElementById("idBuraco2").src="img/marmota.jpg";
		document.getElementById("idBuraco2").addEventListener("click", function(){console.log("PONTO!!!!");});
		setTimeout(tiraMarmota, 4000, document.getElementById("idBuraco2"));
	}
	if (num == 3){
		marmota = document.getElementById("idBuraco3").src="img/marmota.jpg";
		document.getElementById("idBuraco3").addEventListener("click", function(){console.log("PONTO!!!!");});
		setTimeout(tiraMarmota, 4000, document.getElementById("idBuraco3"));
	}
}
