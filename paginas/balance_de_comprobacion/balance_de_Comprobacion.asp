<%
dim sumaSaldo,SumaAbono
Set cnn1 = Server.CreateObject("ADODB.Connection")
cnn1.open "Datos","",""
sql = "SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo ORDER BY Mayor.codigo" 
Set rsMbrs = Server.CreateObject("ADODB.Recordset")
rsMbrs.Open sql, cnn1, 0, 1, &H0001
%>
<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="BalanceComprobacion_salvacolor">
					<param name="movie" value="../../flash/BalanceComprobacion_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="BalanceComprobacion_salvacolor"
					width="400" height="70"
					src="../../flash/BalanceComprobacion_salvacolor.swf"
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
								<% if Session("PeriodoCerrado") <> "no" then %>
								<table border="1" cellspacing="0" cellpadding="3" align="center"  bgcolor="white">	
									<tr>
										<th>CODIGO</th>
										<th>NOMBRE</th>
										<th>CARGO</th>
										<th>ABONO</th>	
									</tr>
									<%
									Do While Not rsMbrs.EOF
									%>
									<tr valign="TOP">
										<td><%=rsMbrs("Codigo")%></td>
										<td><%=rsMbrs("NombreCuenta")%></td>
										<%if rsMbrs("saldo") > 0 then %>
										<td><%=round(rsMbrs("Saldo"),2)%></td>
										<td>&nbsp;</td>
										<%else%>
										<td>&nbsp;</td>
										<td><%=round(abs(rsMbrs("Saldo")),2)%></td>
										<%end if%>
									</tr>
									<%
									SumaSaldo=0
									SumaAbono=0
									rsMbrs.MoveNext
									loop
									'calcula la suma del cargo y abono
									SQL="select Saldo from mayor " 
									set ql=cnn1.execute(SQL)
									while not ql.EOF
										if ql("Saldo") > 0 then
											for k=0 To ql.fields.count-1
												SumaSaldo = SumaSaldo + abs(ql("Saldo"))
											next
											ql.movenext
											else
												for k=0 To ql.fields.count-1
													SumaAbono = SumaAbono + abs(ql("Saldo"))
												next
											ql.movenext
										end if
									wend
									rsMbrs.Close
									Set rsMbrs = Nothing
									cnn1.Close
									Set cnn1 = Nothing
									%>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>        
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>     
									<tr>
										<td> <font size=5>TOTAL</font></td>
										<td> &nbsp;</td>
										<td> <font size=5><%=round(SumaSaldo,2) %></font></td>
										<td> <font size=5><%=round(SumaAbono,2) %></font></td>
									</tr>
								</table>
								<% else %>
								<br>
								<center>
								<img src="../../imagenes/error.png">
								<h1 style="font-size:25pt;color:rgb(213,56,17);">
								No se ha cerrado el periodo!!
								<br>
								<br>
								<input type ="button" value="OK" onClick="window.location='../inicio/bienvenido.asp';">
								</h1>
								</center>
								<%  end if%>
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