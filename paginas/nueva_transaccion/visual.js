function habilitar(chek)
{

 var str 
 cad = chek.name
 n = cad.length
 
 if(n == 2)
  str = cad.charAt(1)
 else
  str = cad.charAt(1) + cad.charAt(2)

 num = parseInt(str,10)

 if(chek.checked == true)
   mostrar(num); 
 else
   mostrar(num+1);
}


	 
function mostrar(t)
 {
  
   if(t==1)
    {
     document.getElementById("capa1").style.visibility="visible";
     document.getElementById("capa3").style.visibility="visible";
     document.getElementById("capa2").style.visibility="hidden";
     document.getElementById("capa4").style.visibility="hidden";
    }
    if(t==2)
    {
     document.getElementById("capa2").style.visibility="visible";
     document.getElementById("capa4").style.visibility="visible";
     document.getElementById("capa1").style.visibility="hidden";
     document.getElementById("capa3").style.visibility="hidden";
    }

   if(t==5)
    {
     document.getElementById("capa5").style.visibility="visible";
     document.getElementById("capa7").style.visibility="visible";
     document.getElementById("capa6").style.visibility="hidden";
     document.getElementById("capa8").style.visibility="hidden";
    }
    if(t==6)
    {
     document.getElementById("capa6").style.visibility="visible";
     document.getElementById("capa8").style.visibility="visible";
     document.getElementById("capa5").style.visibility="hidden";
     document.getElementById("capa7").style.visibility="hidden";
    }

   if(t==9)
    {
     document.getElementById("capa9").style.visibility="visible";
     document.getElementById("capa11").style.visibility="visible";
     document.getElementById("capa10").style.visibility="hidden";
     document.getElementById("capa12").style.visibility="hidden";
    }
    if(t==10)
    {
     document.getElementById("capa10").style.visibility="visible";
     document.getElementById("capa12").style.visibility="visible";
     document.getElementById("capa9").style.visibility="hidden";
     document.getElementById("capa11").style.visibility="hidden";
    }

   if(t==13)
    {
     document.getElementById("capa13").style.visibility="visible";
     document.getElementById("capa15").style.visibility="visible";
     document.getElementById("capa14").style.visibility="hidden";
     document.getElementById("capa16").style.visibility="hidden";
    }
    if(t==14)
    {
     document.getElementById("capa14").style.visibility="visible";
     document.getElementById("capa16").style.visibility="visible";
     document.getElementById("capa13").style.visibility="hidden";
     document.getElementById("capa15").style.visibility="hidden";
    }

   if(t==17)
    {
     document.getElementById("capa17").style.visibility="visible";
     document.getElementById("capa19").style.visibility="visible";
     document.getElementById("capa18").style.visibility="hidden";
     document.getElementById("capa20").style.visibility="hidden";
    }
    if(t==18)
    {
     document.getElementById("capa18").style.visibility="visible";
     document.getElementById("capa20").style.visibility="visible";
     document.getElementById("capa17").style.visibility="hidden";
     document.getElementById("capa19").style.visibility="hidden";
    }

   if(t==21)
    {
     document.getElementById("capa21").style.visibility="visible";
     document.getElementById("capa23").style.visibility="visible";
     document.getElementById("capa22").style.visibility="hidden";
     document.getElementById("capa24").style.visibility="hidden";
    }
    if(t==22)
    {
     document.getElementById("capa22").style.visibility="visible";
     document.getElementById("capa24").style.visibility="visible";
     document.getElementById("capa21").style.visibility="hidden";
     document.getElementById("capa23").style.visibility="hidden";
    }

   if(t==25)
    {
     document.getElementById("capa25").style.visibility="visible";
     document.getElementById("capa27").style.visibility="visible";
     document.getElementById("capa26").style.visibility="hidden";
     document.getElementById("capa28").style.visibility="hidden";
    }
    if(t==26)
    {
     document.getElementById("capa26").style.visibility="visible";
     document.getElementById("capa28").style.visibility="visible";
     document.getElementById("capa25").style.visibility="hidden";
     document.getElementById("capa27").style.visibility="hidden";
    }


   if(t==29)
    {
     document.getElementById("capa29").style.visibility="visible";
     document.getElementById("capa31").style.visibility="visible";
     document.getElementById("capa30").style.visibility="hidden";
     document.getElementById("capa32").style.visibility="hidden";
    }
    if(t==30)
    {
     document.getElementById("capa30").style.visibility="visible";
     document.getElementById("capa32").style.visibility="visible";
     document.getElementById("capa29").style.visibility="hidden";
     document.getElementById("capa31").style.visibility="hidden";
    }
}