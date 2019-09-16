<%if session("sesion_nombre")="admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="MenuEmpleados_salvacolor">
					<param name="movie" value="../../flash/MenuEmpleados_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="MenuEmpleados_salvacolor"
					width="400" height="70"
					src="../../flash/MenuEmpleados_salvacolor.swf"
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
					<table align="center" width="50%">
						<tr>
							<td>
								<br>Elementos que contiene el Men&uacute; Empleados:
								<br>
								<h1>Nuevo</h1>
								<br> Esta p&aacute;gina nos muestra los campos a llenar para agregar un nuevo usuario al Sistema, los campos a llenar son:
								<h2>Nombre:</h2> Debe tener un m&aacute;ximo de 25 caracteres, es un campo obligatorio. 
								<br><br>
								<h2>Apellidos:</h2> Al igual que el nombre, debe tener un m&aacute;ximo de 25 caracteres, es un campo obligatorio. 
								<br><br>
								<h2>Edad:</h2> Tiene un m&aacute;ximo de 2 d&iacute;gitos, es un campo obligatorio y es de tipo n&uacute;merico por lo tanto no acepta caracteres (texto) 
								<br><br>
								<h2>Direcci&oacute;n:</h2> Es un campo de tipo texto, tiene un m&aacute;ximo de 60 caracteres y es obligatorio llenarlo. 
								<br><br>
								<h2>Tel&eacute;fono:</h2> Es un campo tipo n&uacute;mero (no se deben introducir letras), m&aacute;ximo 7 d&iacute;gitos, y es obligatorio.  
								<br><br>         
								<h2>DUI:</h2> Es uno de los campos m&aacute;s importantes porque nos muestra el n&uacute;mero de identificaci&oacute;n del empleado, tiene un m&aacute;ximo de 10 d&iacute;gitos y solo pueden introducirse n&uacute;meros. 		
								<br><br>
								<table align="center">
								<tr>
								<td><h3><A HREF="menu_usuarios.asp">anterior</A></h3></td>
								<td>&nbsp;</td>
								<td><h3><A HREF="menu_cuentas.asp">siguiente</A></h3></td>
								</tr>
								</table>
							</td>
						</tr>
					</table>
					<div class="clr"></div>
				</div>
			</div>
			<center><noscript><font color="red">Advertencia! Para poder realizar operaciones correctamente en el Sistema Contable de Fotoestudio Salvacolor S.A. de C.V., debe tener habilitado JavaScript.</font></noscript><br><br></center>
		</div>
		<div id="footer"><p class="copyright">Sistema Contable de Fotoestudio Salvacolor S.A. de C.V. &#8226; Derechos Reservados 2012</p></div>
	</body>
</html>