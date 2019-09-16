<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
					<script language = "javascript" src = "../../scripts/formularios.js"></script>
					<script language="Javascript">
						function validar(f){
							if(f.usuario.value == 0){
								alert("Debe seleccionar un usuario");
								return false;
							}
						}
					</script>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="EliminarUsuario_salvacolor">
					<param name="movie" value="../../flash/EliminarUsuario_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="EliminarUsuario_salvacolor"
					width="400" height="70"
					src="../../flash/EliminarUsuario_salvacolor.swf"
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
								Dim Conexion 
								Set Conexion = Server.CreateObject("ADODB.Connection")
								Conexion.open "Datos","",""

								SQL="SELECT COUNT(*) AS total FROM usuarios WHERE login <> 'admin'"
								r=conexion.Execute(SQL)
								num=r("total")

								if num=0 then
								%>
								<center>
								<img src="../../imagenes/error.png">
								<h1 style="font-size:25pt;color:rgb(213,56,17);">
								No hay usuarios que eliminar!!
								<br>
								<input type ="button" value="OK" onClick="window.location='../inicio/bienvenido.asp';">
								</h1>
								</center>
								<%
								else

								%>
								<form name = "formusuario" method = "get" action = "mostrar.asp" onsubmit="return(validar(this))">
									<table>    
										<tr>
											<th colspan = "2" align="center"> Seleccionar un usuario</th>              
										</tr>
										<tr>
											<td align="center">              
												<select name="usuario">
													<option value="0">-listado de usuarios-</option>
													<% 
													sql="SELECT * FROM usuarios  WHERE login <> 'admin' ORDER BY login"
													set UserList = Conexion.execute(sql)

													dim loginusr 

													While Not (UserList.EOF)
													loginusr = UserList("Login")
													Response.Write("<option value= '" & loginusr &"' >" & loginusr & "</option>")
													UserList.MoveNext
													Wend
													Conexion.close
													%> 
												</select>
											</td>
										</tr>
										<tr>            
											<td colspan = "2" align="center">
											<br><input type = "submit" name = "aceptar" value = "ACEPTAR">
											</td>
										</tr>
									</table>  
								</form>
								<%
								end if
								%>
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