var pestanas = ["pestana1", "pestana2", "pestana3"];
var contenedores = ["contenedor1", "contenedor2", "contenedor3"];
function cambia_pestana(id){
	//borro la clase activa de todas las pesta�as
	pestanas.each(function(item){
		$(item).removeClass("activa");
	});
	//coloco la clase activa a la pesta�a que se recibe por par�metro
	$(pestanas[id]).addClass("activa");
	//oculto el contenido de todos los contenedores asociados a las pesta�as
	contenedores.each(function(miItem){
		$(miItem).addClass("nover");
	});
	//en el contenido que est� asociado con la pesta�a activa, quito la clase nover
	$(contenedores[id]).removeClass("nover");
}

var pestanas_compras = ["pestana_compras1", "pestana_compras2", "pestana_compras3"];
var contenedores_compras = ["contenedor_compras1", "contenedor_compras2", "contenedor_compras3"];
function cambia_pestana_compras(id){
	//borro la clase activa de todas las pesta�as
	pestanas_compras.each(function(item){
		$(item).removeClass("activa");
	});
	//coloco la clase activa a la pesta�a que se recibe por par�metro
	$(pestanas_compras[id]).addClass("activa");
	//oculto el contenido de todos los contenedores asociados a las pesta�as
	contenedores_compras.each(function(miItem){
		$(miItem).addClass("nover");
	});
	//en el contenido que est� asociado con la pesta�a activa, quito la clase nover
	$(contenedores_compras[id]).removeClass("nover");
}

var pestanas_ventas = ["pestana_ventas1", "pestana_ventas2"];
var contenedores_ventas = ["contenedor_ventas1", "contenedor_ventas2"];
function cambia_pestana_ventas(id){
	//borro la clase activa de todas las pesta�as
	pestanas_ventas.each(function(item){
		$(item).removeClass("activa");
	});
	//coloco la clase activa a la pesta�a que se recibe por par�metro
	$(pestanas_ventas[id]).addClass("activa");
	//oculto el contenido de todos los contenedores asociados a las pesta�as
	contenedores_ventas.each(function(miItem){
		$(miItem).addClass("nover");
	});
	//en el contenido que est� asociado con la pesta�a activa, quito la clase nover
	$(contenedores_ventas[id]).removeClass("nover");
}

var pestanas_pagos = ["pestana_pagos1", "pestana_pagos2", "pestana_pagos3", "pestana_pagos4"];
var contenedores_pagos = ["contenedor_pagos1", "contenedor_pagos2", "contenedor_pagos3", "contenedor_pagos4"];
function cambia_pestana_pagos(id){
	//borro la clase activa de todas las pesta�as
	pestanas_pagos.each(function(item){
		$(item).removeClass("activa");
	});
	//coloco la clase activa a la pesta�a que se recibe por par�metro
	$(pestanas_pagos[id]).addClass("activa");
	//oculto el contenido de todos los contenedores asociados a las pesta�as
	contenedores_pagos.each(function(miItem){
		$(miItem).addClass("nover");
	});
	//en el contenido que est� asociado con la pesta�a activa, quito la clase nover
	$(contenedores_pagos[id]).removeClass("nover");
}