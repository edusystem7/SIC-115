<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
					<div class="pagetitle" align="center">					
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="NuevaCuenta_salvacolor">
					<param name="movie" value="../../flash/NuevaCuenta_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="NuevaCuenta_salvacolor"
					width="400" height="70"
					src="../../flash/NuevaCuenta_salvacolor.swf"
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
								dim nombre, tipo, nuevo_tipo, nuevo_codigo, conexion, consulta
								
								nombre = request.form("nombre")
								tipo = request.form("tipo")
								
								if tipo = 1 then
									nuevo_tipo = 1000
								end if
								if tipo = 2 then
									nuevo_tipo = 2000
								end if
								if tipo = 3 then
									nuevo_tipo = 3000
								end if
								if tipo = 4 then
									nuevo_tipo = 4000
								end if
								if tipo = 5 then
									nuevo_tipo = 5000
								end if
								
								set conexion = server.createobject("adodb.connection")
								conexion.open "datos","",""
								
								'set consulta = conexion.execute("SELECT MAX(codigo)+1 AS maximo FROM catalogo  WHERE codigo LIKE '"&tipo&"*'")
								set consulta = conexion.execute("SELECT Max(codigo)+1 AS maximo FROM catalogo WHERE codigo>="&nuevo_tipo&" AND codigo<"&nuevo_tipo&"+1000")
								nuevo_codigo = consulta("maximo")
								
								conexion.execute("INSERT INTO catalogo(nombrecuenta,codigo) VALUES('"&nombre&"','"&nuevo_codigo&"')")
								
								conexion.close
								%>
								<center>
								<img src="../../imagenes/info.png">
								<h1 style="font-size:25pt;color:rgb(0,126,179);">
								La cuenta <%=nom%> ha sido agregada!!
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