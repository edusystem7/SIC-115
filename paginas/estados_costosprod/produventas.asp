<%
'Creacion del Objeto para conectarse a la base de datos 
Set conn=Server.CreateObject("ADOdb.Connection")
'Se abre la conexión a la base de datos
conn.Open "Datos","","" 
sql="SELECT * FROM ordenes WHERE codigo>=1025 and codigo<=1027 ORDER BY NumOrden"
set R=conn.Execute(sql)
%>
<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<script languge="Javascript">
					function validar(f){
						if(f.orden.value==0){
							alert("Seleccione una orden!!");
							f.orden.focus();
							return false;
						} 
						else{
						return true
						}
					}
					</script>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="FinalizarOrdenFabricacion_salvacolor">
					<param name="movie" value="../../flash/FinalizarOrdenFabricacion_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="FinalizarOrdenFabricacion_salvacolor"
					width="400" height="70"
					src="../../flash/FinalizarOrdenFabricacion_salvacolor.swf"
					bgcolor="#F4F4F4"
					quality="high"
					swliveconnect="true"
					allowscriptaccess="samedomain">
					</embed>
					</object>
					</div>
				</div>
			</div>
			<div id="element-box">
				<div class="m" align="center">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top" class="content" align="center"> 
					<b>Seleccionar una orden de fabricacion</b>
					<form name="dat" method="POST" action="actualizar.asp" onsubmit="return(validar(this))">
						<select name="orden">
							<option value="0" selected>-listado de ordenes de fabricacion-</option>
							<%
							while Not(R.EOF)
							num = R("NumOrden")
							Response.Write("<option value= '" & num & "'>"& num &"</option>")
							R.MoveNext
							wend
							%>
						</select>
						<br>
						<br>
						<input type= "submit" name="aceptar" value="ACEPTAR" >
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>