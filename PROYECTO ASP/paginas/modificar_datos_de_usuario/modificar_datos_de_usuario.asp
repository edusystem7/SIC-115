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
								'Se Obtienen los datos del usuario al que se le modificaran los datos
								Dim conn
								Set conn = Server.CreateObject("ADODB.Connection")
								conn.open "Datos","",""
								Dim sqldat, userid

								userid = Session("sesion_nombre")
								sqldat="SELECT * FROM usuarios WHERE Login = '" & userid & "'"

								Dim datos
								set datos = conn.execute(sqldat)
								Dim  nom, apel, pass

								nom = datos("Nombre")
								apel = datos("Apellido")
								pass = datos("clave")
								conn.close	
								%>
								<form name = "usuario" method = "post" action = "actualizar.asp" onSubmit = "return(validar3(this));">
									<table>
										<tr>
											<th colspan = "2">Datos Usuario</th>
										</tr> 
										<tr>
											<td align="right">Login:</td>
											<td> <input type  ="text" name = "login" maxlength = "10" disabled value = "<%= userid %>"> 
											<input type  ="hidden" name = "user" value = "<%= userid %>">
											</td>
										</tr> 
										<tr>
											<td align="right">Clave:</td>
											<td> <input type  ="password" name = "clave" maxlength = "10" value = "<%= pass %>"> </td>
										</tr>  
										<tr>
											<td align="right">Confirmar Clave:</td>
											<td> <input type  ="password" name = "clave2" maxlength = "10" value = "<%= pass %>"> </td>
										</tr> 
										<tr>
											<td align="right">Nombre:</td>
											<td> <input type  ="text" name = "nombre" maxlength = "25" value = "<%= nom %>"> </td>
										</tr> 
										<tr>
											<td align="right">Apellid:</td>
											<td> <input type  ="text" name = "apellido" maxlength = "25" value = "<%= apel %>"> </td>
										</tr> 
										<tr>
											<th colspan = "2"> 
												<br>
												<input type = "submit" name = "aceptar" value = "ACEPTAR ">
												<input type  ="reset" name = "cancelar" value = "RESTAURAR"> 
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