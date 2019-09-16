<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
					<script language="javascript">
					function validar(f){
						if(f.cuenta.value == 0){
							alert("debe seleccionar una cuenta");
							return false;
						}
					}
					</script>
					<div class="pagetitle" align="center">					
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="EliminarCuenta_salvacolor">
					<param name="movie" value="../../flash/EliminarCuenta_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="EliminarCuenta_salvacolor"
					width="400" height="70"
					src="../../flash/EliminarCuenta_salvacolor.swf"
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
								SQL="SELECT COUNT(*) AS total FROM Catalogo"
								r=conexion.Execute(SQL)
								num=r("total")
								if num=0 then
								%>
								<br><br>
								<center>
								<img src="../../imagenes/error.png">
								<h1 style="font-size:25pt;position:relative;width:350;height:150;text-align:justyfied;">
								No hay  Cuentas en el catalogo!!
								<br>
								<input type ="button" value="OK" onClick="window.location='../bienvenido.html';">
								</h1>
								</center>
								<%
								else
								%>
								<form name = "formcuenta" method = "get" action = "mostrar.asp" onsubmit="return(validar(this))">
								<table>    
									<tr>
										<th colspan = "2" align="center">
											Seleccionar una cuenta
										</th>
									</tr>
									<tr>
										<td align="center">
											<select name="cuenta">
												<option value="0" selected>-listado de cuentas-</option>
												<% 
												sql="SELECT * FROM Catalogo ORDER BY NombreCuenta"
												set UserList = Conexion.execute(sql)
												dim loginusr 
												While Not (UserList.EOF)
													nom = UserList("NombreCuenta")
													cod = UserList("Codigo")
													Response.Write("<option value= '" & cod &"' >" & nom & "</option>")
													UserList.MoveNext
												Wend
												Conexion.close
												%> 
											</select>
										</td>
									</tr> 
									<tr>            
										<td colspan = "2" align="center">
											<br><input type = "submit" name = "aceptar" value = "ACEPTAR ">
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