<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
					<script language = "javascript" src = "../../scripts/formularios.js"></script>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="ModificarUsuario_salvacolor">
					<param name="movie" value="../../flash/ModificarUsuario_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="ModificarUsuario_salvacolor"
					width="400" height="70"
					src="../../flash/ModificarUsuario_salvacolor.swf"
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
								Dim nom,ape,tel,mail,loginuser,pass
								nom = Request.Form("nombre")
								ape = Request.Form("apellido")
								loginuser = Request.Form("user")
								pass = Request.Form("clave")
								Dim conn, sql
								Set conn = Server.CreateObject("ADODB.Connection")
								conn.open "Datos","",""
								sql = "UPDATE usuarios SET Nombre = '" & nom & "', Apellido = '" & ape & "', Clave = '" & pass & "' WHERE Login = '" & loginuser & "'"
								conn.execute(sql)
								conn.close
								%>
								<center>
								<img src="../../imagenes/info.png">
								<h1 style="font-size:25pt;color:rgb(0,126,179);">
								Los datos han sido modificados!!
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