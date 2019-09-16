

function validar3(dat)
{

 if(dat.no.value.length < 1 || ! isNaN(dat.no.value)) 
 { 
   alert("Escribe un nombre");
   dat.no.focus();
   return false;
 }

 if(dat.pu.value.length < 1 || ! isNaN(dat.pu.value)) 
 { 
   alert("Escribe un puesto");
   dat.pu.focus();
   return false;
 }

 
 if(dat.ap.value.length < 1 || ! isNaN(dat.ap.value)) 
 { 
   alert("Escribe un apellido");
   dat.ap.focus();
   return false;
 }

if (isNaN(dat.sa.value)) 
 {
  alert("Escribe unicamente numeros");
  dat.sa.focus();
  return false;
 }

 
 if(dat.sa.value < 0)
 {
  alert("Escribe Numeros positivos!!");
  dat.sa.focus();
  return false;
 }


if(dat.sa.value.length == 0) 
 { 
  alert("Escribe el salario");
  dat.sa.focus();
  return false;

 }



if (isNaN(dat.ho.value)) 
 {
  alert("Escribe unicamente numeros");
  dat.ho.focus();
  return false;
 }

 
 if(dat.ho.value < 0)
 {
  alert("Escribe Numeros positivos!!");
  dat.ho.focus();
  return false;
 }


if(dat.ho.value.length == 0) 
 { 
  alert("Escribe las horas ");
  dat.ho.focus();
  return false;

 }


 return true
}





