<%
dim SumaIngreso,SumaGasto
'conecta a la base de datos
Set cnn1 = Server.CreateObject("ADODB.Connection")
cnn1.open "Datos","",""
'I-N-G-R-E-S-O-S
sql ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 5000 AND Mayor.codigo < 6000) ORDER BY Mayor.codigo"
Set rsMbrs = Server.CreateObject("ADODB.Recordset")
rsMbrs.Open sql, cnn1, 0, 1, &H0001
SumaIngreso=0
SumaGasto=0
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
					id="EstadoResultados_salvacolor">
					<param name="movie" value="../../flash/EstadoResultados_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="EstadoResultados_salvacolor"
					width="400" height="70"
					src="../../flash/EstadoResultados_salvacolor.swf"
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
								<table border="1" cellspacing="0" cellpadding="3"  bgcolor="white"  width="350">
									<caption><font size=3><b>INGRESOS</b></font></caption>
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
									rsMbrs.MoveNext
									loop
									%>
									<tr>
										<td>TOTAL</td>
										<td>&nbsp;</td>        
										<td>&nbsp;</td>
										<td><font size=5 color="black"><%=session("SumaIngreso")%></font></td>
									</tr>
								</table>
								<!------------------------------------------------------------------------------------------------------------->
								<%
								'G-A-S-T-O-S
								sql1 ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 4000 AND Mayor.codigo < 5000) ORDER BY Mayor.codigo"
								Set rsMbrs1 = Server.CreateObject("ADODB.Recordset")
								rsMbrs1.Open sql1, cnn1, 0, 1, &H0001
								%>
								<table border="1" cellspacing="0" cellpadding="3"   bgcolor="white"  width="350">
									<caption><font size=3><b>GASTOS</b><font></caption>
									<tr>
										<th>CODIGO</th>
										<th>NOMBRE</th>
										<th>CARGO</th>
										<th>ABONO</th>	
									</tr>
									<%
									Do While Not rsMbrs1.EOF
									%>
									<tr valign="TOP">
										<td><%=rsMbrs1("Codigo")%></td>
										<td><%=rsMbrs1("NombreCuenta")%></td>
										<%if rsMbrs1("saldo") > 0 then %>
										<td><%=round(rsMbrs1("Saldo"),2)%></td>
										<td>&nbsp;</td>
										<%else%>
										<td>&nbsp;</td>
										<td><%=round(abs(rsMbrs1("Saldo")),2)%></td>
										<%end if%>
									</tr>
									<%
									rsMbrs1.MoveNext
									loop
									rsMbrs.Close
									rsMbrs1.Close
									Set rsMbrs = Nothing
									Set rsMbrs1 = Nothing
									cnn1.Close
									Set cnn1 = Nothing
									%>
									<tr>
										<td>TOTAL</td>
										<td>&nbsp;</td>
										<td><font size=5 color="black"><%=round(abs(session("SumaGasto")),2)%></font></td>
										<td>&nbsp;</td>
									</tr>
								</table>
								<p>&nbsp;<p>
								<%if session("utilidad") > 0 then%>
								<h1>Utilidad = $<% Response.Write(round(abs(session("utilidad")),2))%></h1> 
								<h1>Se obtuvieron Ganancias</h1>
								<%else	%>
								<h1>Perdida = $(<% Response.Write(round(abs(session("utilidad")),2))%>)</h1>
								<h1>Se obtuvieron Perdidas</h1>
								<%end if
								else %>
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