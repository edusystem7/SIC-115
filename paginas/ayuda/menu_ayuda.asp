<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="Ayuda_salvacolor">
					<param name="movie" value="../../flash/Ayuda_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="Ayuda_salvacolor"
					width="400" height="70"
					src="../../flash/Ayuda_salvacolor.swf"
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
					<table>
						<caption><h2>Contenido</h2></caption>
						<tr>
							<td>
								<ul>
									<li> <A HREF="inicio_sesion.asp">Inicio de Sesi&oacute;n</A></li>
									<li> <A HREF="menu_usuarios.asp">Men&uacute; Usuarios </A></li>
									<li> <A HREF="menu_empleados.asp">Men&uacute; Empleados</A></li>
									<li> <A HREF="menu_cuentas.asp">Men&uacute; Cuentas</A></li>
									<li> <A HREF="menu_transacciones.asp">Men&uacute; Transacciones</A></li>
									<li><A HREF="menu_estados_financieros.asp"> Men&uacute; Estados Financieros</A></li>    
									<li><A HREF="menu_contabilidad_costos.asp"> Men&uacute; Contabilidad de Costos</A></li>    
									<li><A HREF="manual_usuario.asp">Manual de Usuario</A></li>                  
								</ul>
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