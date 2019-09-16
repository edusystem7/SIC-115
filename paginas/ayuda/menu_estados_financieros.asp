<%if session("sesion_nombre")="admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="MenuEstadosFinancieros_salvacolor">
					<param name="movie" value="../../flash/MenuEstadosFinancieros_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="MenuEstadosFinancieros_salvacolor"
					width="400" height="70"
					src="../../flash/MenuEstadosFinancieros_salvacolor.swf"
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
								<br>Elementos que contiene el Men&uacute; Estados Financieros:
								<br><h2>Balance General</h2>
								<br> Esta p&aacute;gina nos muestra, una fotograf&iacute;a de la Empresa porque es el estado que nos dice como anda la liquidez de la empresa, y si esta bien o mal econ&oacute;micamente hablando.
								<br>
								<br><h2>Estado Resultados</h2>
								<br> Aqu&iacute; se presenta el estado de la empresa, es decir si gana o pierde dinero al final de per&iacute;odo.
								<br>
								<br><h2>Estado Capital</h2>
								<br> Es donde se utilizan las cuentas de inversi&oacute;n y desinversi&oacute;n, las cuales al restarlas nos da el Capital Contable de la Empresa.
								<br>
								<br><h2>Balance de Comprobaci&oacute;n</h2>
								<br> Este nos sirve como su nombre lo dice a comprobar si las transacciones se han hecho de forma correcta, porque la suma del cargo y del abono deben de ser iguales.
								<br>
								<br><h2>Estado de Costos</h2>
								<br> Aqu&iacute; se calculan los costos unitarios del producto al final de estado, lo cual se hace por medio del costo de lo vendido que es lo que se busca lograr con este estado.
								<br><br>
								<table align="center">
								<tr>
								<td><h3><A HREF="menu_transacciones.asp">anterior</A></h3></td>
								<td>&nbsp;</td>
								<td><h3><A HREF="menu_contabilidad_costos.asp">siguiente</A></h3></td>
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