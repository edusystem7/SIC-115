<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<script language="javascript">
						function validar(f){
							if(f.cuenta.value == 0){
								alert("debe seleccionar una cuenta");
								return false;
							}
							return true;
						}
					</script>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="ConsultarCuenta_salvacolor">
					<param name="movie" value="../../flash/ConsultarCuenta_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="ConsultarCuenta_salvacolor"
					width="400" height="70"
					src="../../flash/ConsultarCuenta_salvacolor.swf"
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
								<form name = "formusuario" method = "get" action = "consulta.asp" onsubmit="return(validar(this))">
								<table>    
									<tr>
										<th colspan = "2" align="center">
											Seleccionar una cuenta
										</th>              
									</tr>
									<tr>
										<td align="center">
											<select name="cuenta">
												<option value="0">-listado de cuentas-</option>
												<% 
												Dim Conexion 
												Set Conexion = Server.CreateObject("ADODB.Connection")
												Conexion.open "Datos","",""
												sql="SELECT DISTINCT Catalogo.NombreCuenta, Catalogo.codigo  FROM Catalogo, Diario where Catalogo.Codigo=Diario.codigo ORDER BY Catalogo.NombreCuenta"
												set List = Conexion.Execute(sql)
												dim loginusr 
												While Not (List.EOF)
													nombre = List("NombreCuenta")
													codigo = List("codigo")
													Response.Write("<option value= '" & codigo &"' >" & nombre & "</option>")
													List.MoveNext
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