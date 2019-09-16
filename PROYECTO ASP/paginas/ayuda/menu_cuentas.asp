<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="MenuCuentas_salvacolor">
					<param name="movie" value="../../flash/MenuCuentas_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="MenuCuentas_salvacolor"
					width="400" height="70"
					src="../../flash/MenuCuentas_salvacolor.swf"
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
								<br>Elementos que contiene el Men&uacute; Cuentas:
								<br><h2>Nueva Cuenta</h2>
								<br> Esta p&aacute;gina nos permite crear una nueva cuenta en el cat&aacute;logo, siempre y cuando no se repita el c&oacute;digo y el nombre de la cuenta.
								<br><br>
								<br><h2>Consultar Cuenta</h2>
								<br> Esta p&aacute;gina nos muestra el c&oacute;digo, nombre, descripci&oacute;n y tipo de cuenta adem&aacute;s el saldo que tiene actualmente.
								<br><br>
								<br><h2>Eliminar Cuenta</h2>
								<br> Esta p&aacute;gina nos muestra el nombre de la cuenta y al escoger una se desplegan el c&oacute;digo y la descripci&oacute;n de la misma y luego se elimina.
								<br><br>
								<table align="center">
								<tr>
								<td><h3><A HREF="menu_empleados.asp">anterior</A></h3></td>
								<td>&nbsp;</td>
								<td><h3><A HREF="menu_transacciones.asp">siguiente</A></h3></td>
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