<%if session("sesion_nombre")="admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="InicioSesion_salvacolor">
					<param name="movie" value="../../flash/InicioSesion_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="InicioSesion_salvacolor"
					width="400" height="70"
					src="../../flash/InicioSesion_salvacolor.swf"
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
								<br>Elementos que contiene la p&aacute;gina de inicio de sesi&oacute;n:
								<br><br>
								<h2>Login:</h2> Este campo se debe introducir un nombre asignado para accesar al sistema, el cual debe comenzar con una letra may&uacute;scula y las dem&aacute;s min&uacute;sculas o todas may&uacute;sculas, debe tener un m&aacute;ximo de 10 caracteres.
								<br><br>
								<h2>Password:</h2> Este campo es necesario llenarlo ya que es la llave para ingresar al sistema, debe terner un m&aacute;ximo de 10 caracteres (al igual que el login) y no importa si son may&uacute;sculas o min&uacute;sculas, adem&aacute;s puede tener cualquier tipo de texto como s&iacute;mbolos, letras, n&uacute;meros, etc.
								<br><br>
								<table align="center">
								<tr>
								<td><h3><A HREF="menu_ayuda.asp">anterior</A></h3></td>
								<td>&nbsp;</td>
								<td><h3><A HREF="menu_usuarios.asp">siguiente</A></h3></td>
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