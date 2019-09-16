<%
dim SumaActivo,SumaPasivo,SumaCapital
set cnn1 = Server.CreateObject("ADODB.Connection")
cnn1.open "Datos","",""
'A-C-T-I-V-O-S
sql ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 1000 AND Mayor.codigo < 2000) ORDER BY Mayor.codigo"
set rsMbrs = cnn1.execute(sql)
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
					id="BalanceGeneral_salvacolor">
					<param name="movie" value="../../flash/BalanceGeneral_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="BalanceGeneral_salvacolor"
					width="400" height="70"
					src="../../flash/BalanceGeneral_salvacolor.swf"
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
								<table border="1" cellspacing="0" cellpadding="3" align="center"  bgcolor="white"  width="350">
									<caption><font size=3><b>ACTIVOS</b></font></caption>
									<tr>
										<th>CODIGO</th>
										<th>NOMBRE</th>
										<th>SALDO</th>
									</tr>
									<%Do While Not rsMbrs.EOF%>
									<tr valign="TOP">
										<td><%=rsMbrs("Codigo")%></td>
										<td><%=rsMbrs("NombreCuenta")%></td>
										<td><%=round(abs(rsMbrs("Saldo")),2)%></td>
									</tr>
									<%
									SumaActivo=0
									SumaPasivo=0
									SumaCapital=0
									rsMbrs.MoveNext
									loop
									'calcula la suma de los activos
									set ql=cnn1.execute(sql)
									while not ql.EOF
										SumaActivo = SumaActivo + ql("Saldo")
										ql.movenext
									wend
									%>
									<tr>
										<td>TOTAL ACTIVOS</td>
										<td>&nbsp;</td>        
										<td><font size=5><%=round(abs(SumaActivo),2) %></font></td>
									</tr>
								</table>
								<!------------------------------------------------------------------------------------------------------------->
								<%
								'P-A-S-I-V-O-S
								sql2 ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 2000 AND Mayor.codigo < 3000) ORDER BY Mayor.codigo"
								set rsMbrs2 = cnn1.execute(sql2)

								%>
								<table border="1" cellspacing="0" cellpadding="3" align="center"  bgcolor="white"  width="350">
									<caption><font size=3><b>PASIVOS</b></font></caption>
									<tr>
										<th>CODIGO</th>
										<th>NOMBRE</th>
										<th>SALDO</th>
									</tr>
									<%Do While Not rsMbrs2.EOF%>
									<tr valign="TOP">
										<td><%=rsMbrs2("Codigo")%></td>
										<td><%=rsMbrs2("NombreCuenta")%></td>
										<td><%=round(abs(rsMbrs2("Saldo")),2)%></td>
									</tr>
									<%
									rsMbrs2.MoveNext
									loop
									'calcula la suma de los pasivos
									set ql2=cnn1.execute(sql2)
									while not ql2.EOF
										SumaPasivo = SumaPasivo + ql2("Saldo")
										ql2.movenext
									wend
									%>
									<tr>
										<td>TOTAL PASIVOS</td>
										<td>&nbsp;</td>        
										<td><font size=5><%=round(abs(SumaPasivo),2) %></font></td>
									</tr>
								</table>
								<!------------------------------------------------------------------------------------------------------------->
								<%
								'C-A-P-I-T-A-L
								sql3 ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 3001 AND Mayor.codigo < 4000) ORDER BY Mayor.codigo"
								set rsMbrs1 = cnn1.execute(sql3)
								%>
								<table border="1" cellspacing="0" cellpadding="3" align="center"  bgcolor="white"  width="350">
									<caption><font size=3><b>CAPITAL</b></font></caption>
									<tr>
										<th>CODIGO</th>
										<th>NOMBRE</th>
										<th>SALDO</th>
									</tr>
									<%Do While Not rsMbrs1.EOF%>
									<tr valign="TOP">
										<td><%=rsMbrs1("Codigo")%></td>
										<td><%=rsMbrs1("NombreCuenta")%></td>
										<td><%=round(abs(rsMbrs1("Saldo")),2)%></td>
									</tr>
									<%
									rsMbrs1.MoveNext
									loop
									'calcula la suma del capital
									set ql1=cnn1.execute(sql3)
									while not ql1.EOF
										SumaCapital = SumaCapital + ql1("Saldo")
										ql1.movenext
									wend
									%>
									<tr valign="TOP">
										<td>3005</td>
										<td>Capital Contable</td>
										<td><%=round(abs(session("kconta")),2)%></td>
									</tr>
									<% 
									TotalKconta = SumaCapital + session("kconta")
									TotalPart = abs(SumaPasivo) + abs(TotalKconta)
									'TotalPart = SumaPasivo + TotalKconta
									rsMbrs.Close
									rsMbrs1.Close
									rsMbrs2.Close
									Set rsMbrs = Nothing
									Set rsMbrs1 = Nothing
									Set rsMbrs2 = Nothing
									cnn1.Close
									Set cnn1 = Nothing
									%>
									<tr>
										<td>TOTAL CAPITAL</td>
										<td> &nbsp;</td>        
										<td><font size=5><%=round(abs(TotalKconta),2)%></font></td>
									</tr>
								</table>
								<p>&nbsp;<p>
								<h1>Total Activos = $ <%=round(abs(SumaActivo),2)%></h1>
								<h1>Total Participaciones = $ <%=round(abs(TotalPart),2)%></h1>
								<% else %>
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