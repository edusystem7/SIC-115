<%
dim SumaInv,SumaDesinv
set cnn1 = Server.CreateObject("ADODB.Connection")
cnn1.open "Datos","",""
'C-A-P-I-T-A-L
sql ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 3000 AND Mayor.codigo < 4000) ORDER BY Mayor.codigo"
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
					id="EstadoCapital_salvacolor">
					<param name="movie" value="../../flash/EstadoCapital_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="EstadoCapital_salvacolor"
					width="400" height="70"
					src="../../flash/EstadoCapital_salvacolor.swf"
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
									<caption><b><font size=3>INVERSIONES</font></b></caption>
									<tr>
										<th>CODIGO</th>
										<th>NOMBRE</th>
										<th>CARGO</th>
										<th>ABONO</th>	
									</tr>
									<%Do While Not rsMbrs.EOF%>
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
									SumaInv=0
									SumaDesinv=0
									rsMbrs.MoveNext
									loop
									%>
									<tr valign="TOP">
										<td>3001</td>
										<td>Utilidad</td>
										<td>&nbsp;</td>
										<td> <%=session("utilidad")%></td>
									</tr>
									<tr>
										<td>INVERSION</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td><font size=5><%=session("Totalinv") %></font></td>
									</tr>
								<!--</table>-->
								<!------------------------------------------------------------------------------------------------------------->
								<%
								sql1 ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 4050 AND Mayor.codigo < 5000) ORDER BY Mayor.codigo"
								set rsMbrs1 = cnn1.execute(sql1)
								if NOT((rsMbrs1.BOF = TRUE) and (rsMbrs1.EOF =TRUE )) then
								%>
								<table border="1" cellspacing="0" cellpadding="3"  bgcolor="white"  width="350">
									<caption><b><font size=3>DESINVERSIONES</font></b></caption>
									<tr>
										<th>CODIGO</th>
										<th>NOMBRE</th>
										<th>CARGO</th>
										<th>ABONO</th>	
									</tr>
									<%Do While Not rsMbrs1.EOF%>
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
									end if
									rsMbrs.Close
									rsMbrs1.Close
									Set rsMbrs = Nothing
									Set rsMbrs1 = Nothing
									cnn1.Close
									Set cnn1 = Nothing
									%>
									<tr>
										<td>DESINVERSION</td>
										<td>&nbsp;</td>         
										<td><font size=5><%=session("SumaDesinv") %></font></td>
										<td>&nbsp;</td>
									</tr>
								</table>
								<p>&nbsp;</p>
								<!--------------------------------->
								<%if session("kconta") > 0 then%>
								<h1>Capital Contable = $<% Response.Write(round(session("kconta"),2))%></h1> 
								<%else%>
								<h1>Capital Contable = $(<% Response.Write(round(abs(session("kconta")),2))%>)</h1>
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