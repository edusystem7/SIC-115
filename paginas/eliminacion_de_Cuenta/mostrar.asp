<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
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
								cod = Request.QueryString("cuenta")
								set conn=Server.CreateObject("ADODB.Connection")
								conn.open "Datos","",""
								SQL="SELECT COUNT(*) AS total FROM Diario WHERE codigo ="&cod
								SET Lista = conn.execute(SQL)
								sql="SELECT NombreCuenta FROM Catalogo WHERE Codigo="&cod
								SET r= conn.Execute(sql)
								num = 0
								nom=r("NombreCuenta")
								num=Lista("total")
								if num <> 0 then
								%>
								<center>
								<img src="../../imagenes/warning.png">
								<h1 style="font-size:25pt;color:rgb(255,162,0);">
								La cuenta <%=nom%> no se puede eliminar debido a que aun esta en uso, solo puede eliminar cuentas que ya no se utilizan!!
								<br>
								<br>
								<input type ="button" value="OK" onClick="window.location='../bienvenido.html';">
								</h1>
								</center>
								<%
								else
									if cod >= 2000 then
										tipo="Pasivo"
										if cod >= 3000 then
											tipo="Capital"
											if cod >= 4000 then
												tipo="Gastos"
												if cod >= 5000 then
													tipo="Ingresos"
											end if
										end if
									end if
									else
										tipo="Activo"
									end if
								%>
								<table>
									<tr> 
										<th align="right">Nombre Cuenta:</th>
										<td align="left"><%=nom%></td>
									</tr>
									<tr> 
										<th align="right">Codigo:</th>
										<td align="left"><%=cod%></td>
									</tr>
									<tr> 
										<th align="right">Tipo de cuenta:</th>
										<td align="left"><%=tipo%></td>
									</tr>
									<tr>
										<form name="cuenta" method="post" action="eliminar.asp">
										<td colspan="2" align="center">
											<br>
											<input type="submit" name="eliminar" value="ELIMINAR">
											<input type="hidden" name="cod" value="<%=cod%>">
											<input type="hidden" name="nom" value="<%=nom%>">
										</td>
										</form>
									</tr>
								</table>
								<%end if%>
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