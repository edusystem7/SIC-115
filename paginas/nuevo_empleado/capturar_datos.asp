<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="NuevoEmpleado_salvacolor">
					<param name="movie" value="../../flash/NuevoEmpleado_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="NuevoEmpleado_salvacolor"
					width="400" height="70"
					src="../../flash/NuevoEmpleado_salvacolor.swf"
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
								<% 
								'declaracion de variables
								Dim Obj_Conexion
								Dim Obj_Record_Set
								Dim SQL
								set conn=Server.CreateObject("ADODB.Connection")
								conn.open "Datos","",""
								ape=Request.Form("apellido")    
								nom=Request.Form("nombre")
								puest=Request.Form("puesto")
								salari=Request.Form("salario")
								hor=Request.Form("hora")
								SQL= "INSERT INTO Empleados (Apellidos,Nombres,Puesto,Salario,Horas) VALUES ('"&ape&"','"&nom&"','"&puest&"','"&salari&"','"&hor&"')"
								conn.Execute(SQL)
								conn.Close
								%>
								<center>
								<img src="../../imagenes/info.png">
								<h1 style="font-size:25pt;color:rgb(0,126,179);">
								Los datos se agregon satisfactoriamente!!
								<br>
								<br>
								<input type ="button" value="OK" onClick="window.location='../inicio/bienvenido.asp';">
								</h1>
								</center>
							</td>
						</tr>
					</table>
					<div class="clr"></div>
				</div>
			</div>
			<center><noscript><font color="red">Advertencia! Para poder realizar operaciones correctamente en el Sistema Contable de Fotoestudio Salvacolor S.A. de C.V., debe tener habilitado JavaScript.</font></noscript></center>
		</div>
		<div id="footer"><p class="copyright">Sistema Contable de Fotoestudio Salvacolor S.A. de C.V. &#8226; Derechos Reservados 2012</p></div>
	</body>
</html>