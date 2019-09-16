<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
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
								<% 
								Dim codigo, nombre, cargo, abono, saldo
								codigo = Request.QueryString("cuenta")
								set conn=Server.CreateObject("ADODB.Connection")
								conn.open "Datos","",""
								SQL="SELECT SUM(cargo) AS c, SUM(abono) AS a  FROM  Diario where Diario.codigo="&codigo
								SET Lista = conn.execute(SQL)
								sql2="SELECT NombreCuenta FROM Catalogo WHERE Codigo="&codigo
								SET resul= conn. Execute(sql2)	
								cargo=Lista("c")
								abono=Lista("a")
								saldo=cargo-abono
								nombre=resul("NombreCuenta")
								%>
								<table>
									<tr> 
										<th align="right">Nombre Cuenta:</th>
										<td align="left"><%=nombre%></td>
									</tr>
									<tr> 
										<th align="right">Cargo:</th>
										<td align="left"><%=cargo%></td>
									</tr>
									<tr> 
										<th align="right">Abono:</th>
										<td align="left"><%=abono%></td>
									</tr>
									<tr> 
										<th align="right">Saldo:</th>
										<% if saldo < 0 then%>
										<td align="left">(<%=abs(saldo)%>)</td>
										<%else%>
										<td align="left"><%=saldo%></td>  
										<%end if%>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<br>
											<input type ="button" value="OK" onClick="window.location='../inicio/bienvenido.asp';">
										</td>
									</tr>
								</table>
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