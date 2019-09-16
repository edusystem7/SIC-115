function validar(dat)
{
 
 if(dat.nombre.value =="") 
 { 
   alert("Debes escribir el nombre del empleado");
   dat.nombre.focus();
   return false;
 }

 if(dat.apellido.value =="") 
 { 
   alert("Debes escribir el apellido del empleado");
   dat.apellido.focus();
   return false;
 }

 if(dat.puesto.value =="") 
 { 
   alert("Debes escribir el puesto del empleado");
   dat.puesto.focus();
   return false;
 }
 

 if(dat.salario.value =="") 
 { 
   alert("Debes escribir el salario del empleado");
   dat.puesto.focus();
   return false;
 }
 
 if(dat.hora.value =="") 
 { 
   alert("Debes escribir las horas extra del empleado");
   dat.hora.focus();
   return false;
 }

 return true
}




 

function validar2(campo)
{
 if (campo.value<0)
 {
   alert("Solo numeros positivos");
   campo.focus();
 }
            
 if(isNaN(campo.value))
 {
  alert("Ingrese solo numeros por favor"); 
  campo.focus();
 }  
}//Fin validar1
















