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
					id="NuevoUsuario_salvacolor">
					<param name="movie" value="../../flash/NuevoUsuario_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="NuevoUsuario_salvacolor"
					width="400" height="70"
					src="../../flash/NuevoUsuario_salvacolor.swf"
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
								<% If Session("nuevo")<>"" Then %>
								<form name = "add" method = "post" action = "procesarusuario.asp" onSubmit = "return(validar(this));">
								<table>
									<tr>
										<th colspan = "2">Nuevo Usuario</th>
									</tr> 
									<tr>
										<td align="right">Login:</td>
										<td>
											<input disabled type = "text" name = "usuario" value = '<%=Request.QueryString("usuario")%>'>
											<input type = "hidden" name = "usuario2" value = '<%=Request.QueryString("usuario")%>'>
										</td>
									</tr> 
									<tr>
										<td align="right">* Clave:</td>
										<td> <input type  ="password" name = "clave" maxlength = "10"> </td>
									</tr>  
									<tr>
										<td align="right">* Confirmar Clave:</td>
										<td> <input type  ="password" name = "clave2" maxlength = "10"> </td>
									</tr> 
									<tr>
										<td align="right">* Nombres:</td>
										<td> <input type  ="text" name = "nombre" maxlength = "25"> </td>
									</tr> 
									<tr>
										<td align="right">* Apellidos:</td>
										<td> <input type  ="text" name = "apellido" maxlength = "25"> </td>
									</tr> 
									<tr>
									<th colspan = "2"> 										
										<br>
										<input type = "submit" name = "enviar" value = "Enviar ">
										<input type  ="button" name = "cancelar" value = "Cancelar" onClick = "window.location = 'cancel.asp';"> 
									</th>
									</tr> 
								</table>  
								</form>
								<script language = "javascript"> 
									document.add.clave.focus();
								</script>
								<% else %>
								<%
								dim Us
								Us = Request.Form("Usuario")
								If(Request.Form("usuario")<>"") Then
								set conn=Server.CreateObject("ADODB.Connection")
								conn.open "Datos","",""
								sql = "SELECT * FROM usuarios WHERE login = '" & Request.Form("usuario") & "'"

								set lista = conn.execute(sql)

								if not(lista.eof) then
								Response.write("<script language = 'javascript'>alert('Ese nombre de usuario ya existe\nescribe otro!!')</script>")
								else
								Session("nuevo") = "ok"
								Response.redirect("./nuevo_usuario.asp?usuario=" & Us)
								end if
								end if
								%>
								<form name = "addusuario" method = "post" action = "nuevo_usuario.asp" onSubmit = "return(validar2(this));">
									<table>
										<tr>
											<th colspan = "2"> Verificaci&oacute;n de Identificador</th>
										</tr> 
										<tr>
											<td>Login:</td>
											<td> <input type  ="text" name = "usuario" maxlength = "10"> </td>
										</tr> 
										<tr>
											<th colspan = "2"> 
												<br>
												<input type = "submit" name = "check" value = "Verificar Login">
												<input type  ="button" name = "cancelar" value = "Cancelar" onClick = "window.location = '../inicio/bienvenido.asp';"> 
											</th>
										</tr> 
									</table>  
								</form>
								<script language = "javascript"> document.addusuario.usuario.focus(); </script>
								<% end if %>
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