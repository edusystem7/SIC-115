function validar(dat)
{
 
 if(dat.clave.value.length < 3) 
 { 
   alert("No has escrito una clave o es demasiado corta");
   dat.clave.focus();
   return false;
 }

 if(dat.clave2.value.length == 0) 
 { 
   alert("No has confirmado la clave");
   dat.clave2.focus();
   return false;
 }

 if(dat.clave2.value != dat.clave.value)
 {
  alert("La clave no coincide");
  dat.clave2.value = "";
  dat.clave2.focus();
  return false;  
 }

 if(dat.nombre.value.length < 1 || ! isNaN(dat.nombre.value)) 
 { 
   alert("Escribe un nombre");
   dat.nombre.focus();
   return false;
 }
 
 if(dat.apellido.value.length < 1 || ! isNaN(dat.apellido.value)) 
 { 
   alert("Escribe un apellido");
   dat.apellido.focus();
   return false;
 }

 if (isNaN(dat.telefono.value)) 
 {
  alert("Escribe unicamente numeros");
  dat.telefono.focus();
  return false;
 }

 
 if(dat.telefono.value.length < 8 && dat.telefono.value.length >= 1)
 {
  alert("Escribe 8 digitos!!");
  dat.telefono.focus();
  return false;
 }


if(dat.telefono.value.length == 0) 
 { 
   dat.telefono.value = "00000000";
 }

if(dat.correo.value.length == 0) 
 { 
   dat.correo.value = "Ninguno";
 }


 return true
}













function validar2(dat)
{
 if(dat.usuario.value.length < 1 || ! isNaN(dat.usuario.value)) 
 { 
   alert("Escribe un Login !!");
   dat.usuario.focus();
   return false;
 }
 return true
}


function validar3(dat)
{
 if(dat.categoria[dat.categoria.selectedIndex].value == 1) 
 { 
   alert("Elije una categoria");
   return false;
 }
 
 return true;
}













function validar3(dat)
{

 if(dat.clave.value.length < 3) 
 { 
   alert("No has escrito una clave o es demasiado corta");
   dat.clave.focus();
   return false;
 }

 if(dat.clave2.value.length == 0) 
 { 
   alert("No has confirmado la clave");
   dat.clave2.focus();
   return false;
 }

 if(dat.clave2.value != dat.clave.value)
 {
  alert("La clave no coincide");
  dat.clave2.value = "";
  dat.clave2.focus();
  return false;  
 }

 if(dat.nombre.value.length < 1 || ! isNaN(dat.nombre.value)) 
 { 
   alert("Escribe un nombre");
   dat.nombre.focus();
   return false;
 }
 
 if(dat.apellido.value.length < 1 || ! isNaN(dat.apellido.value)) 
 { 
   alert("Escribe un apellido");
   dat.apellido.focus();
   return false;
 }

if (isNaN(dat.telefono.value)) 
 {
  alert("Escribe unicamente numeros");
  dat.telefono.focus();
  return false;
 }

 
 if(dat.telefono.value.length < 8 && dat.telefono.value.length >= 1)
 {
  alert("Escribe 8 digitos!!");
  dat.telefono.focus();
  return false;
 }


if(dat.telefono.value.length == 0) 
 { 
   dat.telefono.value = "00000000";
 }

if(dat.correo.value.length == 0) 
 { 
   dat.correo.value = "Ninguno";
 }


 return true
}





