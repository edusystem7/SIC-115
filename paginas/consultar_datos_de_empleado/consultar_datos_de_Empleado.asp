<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<script language = "javascript" src = "../../scripts/formularios.js"></script>
					<script language="Javascript">
						function validar(f){
							if(f.usuario.value == 0){
								alert("Debe seleccionar un empleado");
								return false;
							}
						}
					</script>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="ConsultarEmpleado_salvacolor">
					<param name="movie" value="../../flash/ConsultarEmpleado_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="ConsultarEmpleado_salvacolor"
					width="400" height="70"
					src="../../flash/ConsultarEmpleado_salvacolor.swf"
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
								<form name = "formusuario" method = "get" action = "consulta2.asp" onsubmit="return(validar(this))">
									<table>    
										<tr>
											<th colspan = "2" align="center">Seleccionar un empleado</th>              
										</tr>
										<tr>
											<td align="center">              
												<select name="usuario">
													<option value="0">-listado de empleados-</option>
													<% 
													Dim Conexion 
													Set Conexion = Server.CreateObject("ADODB.Connection")
													Conexion.open "Datos","",""
													Dim sql, UserList
													sql="SELECT * FROM Empleados"
													set UserList = Conexion.execute(sql)

													dim loginusr 

													While Not (UserList.EOF)
													loginusr = UserList("Apellidos")
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
										<br>
										<input type = "submit" name = "aceptar" value = "ACEPTAR ">
										</td>
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