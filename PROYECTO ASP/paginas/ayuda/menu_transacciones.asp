<%if session("sesion_nombre")="admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="MenuTransacciones_salvacolor">
					<param name="movie" value="../../flash/MenuTransacciones_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="MenuTransacciones_salvacolor"
					width="400" height="70"
					src="../../flash/MenuTransacciones_salvacolor.swf"
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
								<br>Elementos que contiene el Men&uacute; Transacciones:
								<br>
								<h1>Nueva</h1>
								<br> Esta p&aacute;gina nos muestra todas la cuentas existentes en el cat&aacute;logo y al escoger una se desplegan los datos en el cuadro de abajo donde se ingresa la transacci&oacute;n, en dicho cuadro se muestra el c&oacute;digo de la cuenta, el nombre de la cuenta y la opci&oacute;n de cargar o abonar para ser introducida en los cuadros diario y posteriormente en mayor.
								<br><br>
								<br>
								<h1>Cierre de Periodo</h1>
								<br> Aqui se despliegan las fechas de las transacciones hechas durante el periodo contable, luego se cierra el periodo y se desplega un cuadro que proviene de la tabla mayor (existente en la base de datos) y de ah&iacute; aparece un boton que nos permite hacer los ajustes del periodo contable.
								<br><br>
								<table align="center">
								<tr>
								<td><h3><A HREF="menu_cuentas.asp">anterior</A></h3></td>
								<td>&nbsp;</td>
								<td><h3><A HREF="menu_estados_financieros.asp">siguiente</A></h3></td>
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