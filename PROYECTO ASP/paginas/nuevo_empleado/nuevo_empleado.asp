<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
					<script language = "javascript" src = "formularios.js"></script>
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
								<form method="post" action="capturar_datos.asp" onSubmit = "return(validar(this));">
								<table>
									<tr>
										<th colspan = "2">Introducir Datos del Empleado</th>
									</tr>
									<tr>
										<td align="right">Nombre:</td>
										<td> <input type  ="text" name = "nombre" maxlength = "10"> </td>
									</tr>  
									<tr>
										<td align="right">Apellido:</td>
										<td> <input type  ="text" name = "apellido" maxlength = "10"> </td>
									</tr> 
									<tr>
										<td align="right">Puesto:</td>
										<td> <input type  ="text" name = "puesto" maxlength = "25"> </td>
									</tr> 
									<tr>
										<td align="right">Salario:</td>
										<td> <input type  ="text" name = "salario" maxlength = "25" onblur="validar2(this)"> </td>
									</tr> 
									<tr>
										<td align="right">Horas:</td>
										<td> <input type  ="text" name = "hora" maxlength = "25" onblur="validar2(this)"> </td>
									</tr> 
									<tr>
									<th colspan = "2"> 
										<br>
										<input type="submit" name="Submit" value="Guardar">
										<input type  ="button" name = "cancelar" value = "Cancelar" onClick = "window.location = '/inicio/bienvenidoasp';"> 
									</th>
									</tr> 
								</table>
								</form>
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