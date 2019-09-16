<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="NuevaTransaccion_salvacolor">
					<param name="movie" value="../../flash/NuevaTransaccion_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="NuevaTransaccion_salvacolor"
					width="400" height="70"
					src="../../flash/NuevaTransaccion_salvacolor.swf"
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
								<p>&nbsp;</p>
								<% 
								ctaCar1 = Request.Form("cc1")
								ctaCar2 = Request.Form("cc2")
								ctaCar3 = Request.Form("cc3")
								ctaCar4 = Request.Form("cc4")
								ctaCar5 = Request.Form("cc5")
								ctaAbo1 = Request.Form("ca1")
								ctaAbo2 = Request.Form("ca2")
								ctaAbo3 = Request.Form("ca3")
								ctaAbo4 = Request.Form("ca4")
								ctaAbo5 = Request.Form("ca5")
								monCar1 = Request.Form("mc1")
								monCar2 = Request.Form("mc2")
								monCar3 = Request.Form("mc3")
								monCar4 = Request.Form("mc4")
								monCar5 = Request.Form("mc5")
								monAbo1 = Request.Form("ma1")
								monAbo2 = Request.Form("ma2")
								monAbo3 = Request.Form("ma3")
								monAbo4 = Request.Form("ma4")
								monAbo5 = Request.Form("ma5")
								fech = Date()
								set conn = Server.CreateObject("ADODB.Connection")
								conn.open "Datos","",""
								cad = "SELECT * FROM Diario ORDER BY NumTrans"
								set L = conn.execute(cad)
								While Not (L.EOF)
									numero = L("NumTrans")
									L.MoveNext
								Wend
								if numero = "" then
									numero = 0
								end if   
								' *************** INGRESO TODOS LOS CARGOS ***************
								if ctaCar1 <> 0 then
									sql1 = "INSERT INTO Diario (NumTrans, codigo, cargo, fecha) VALUES ('" & numero+1 & "', '" & ctaCar1 & "', '" & monCar1 & "', '" & fech & "')"
									conn.execute(sql1)
								end if
								if ctaCar2 <> 0 then
									sql1 = "INSERT INTO Diario (NumTrans, codigo, cargo, fecha) VALUES ('" & numero+1 & "', '" & ctaCar2 & "', '" & monCar2 & "', '" & fech & "')"
									conn.execute(sql1)
								end if
								if ctaCar3 <> 0 then
									sql1 = "INSERT INTO Diario (NumTrans, codigo, cargo, fecha) VALUES ('" & numero+1 & "', '" & ctaCar3 & "', '" & monCar3 & "', '" & fech & "')"
									conn.execute(sql1)
								end if
								if ctaCar4 <> 0 then
									sql1 = "INSERT INTO Diario (NumTrans, codigo, cargo, fecha) VALUES ('" & numero+1 & "', '" & ctaCar4 & "', '" & monCar4 & "', '" & fech & "')"
									conn.execute(sql1)
								end if
								if ctaCar5 <> 0 then
									sql1 = "INSERT INTO Diario (NumTrans, codigo, cargo, fecha) VALUES ('" & numero+1 & "', '" & ctaCar5 & "', '" & monCar5 & "', '" & fech & "')"
									conn.execute(sql1)
								end if
								' *************** INGRESO TODOS LOS ABONOS ***************
								if ctaAbo1 <> 0 then
									sql1 = "INSERT INTO Diario (NumTrans, codigo, abono, fecha) VALUES ('" & numero+1 & "', '" & ctaAbo1 & "', '" & monAbo1 & "', '" & fech & "')"
									conn.execute(sql1)
								end if
								if ctaAbo2 <> 0 then
									sql1 = "INSERT INTO Diario (NumTrans, codigo, abono, fecha) VALUES ('" & numero+1 & "', '" & ctaAbo2 & "', '" & monAbo2 & "', '" & fech & "')"
									conn.execute(sql1)
								end if
								if ctaAbo3 <> 0 then
									sql1 = "INSERT INTO Diario (NumTrans, codigo, abono, fecha) VALUES ('" & numero+1 & "', '" & ctaAbo3 & "', '" & monAbo3 & "', '" & fech & "')"
									conn.execute(sql1)
								end if
								if ctaAbo4 <> 0 then
									sql1 = "INSERT INTO Diario (NumTrans, codigo, abono, fecha) VALUES ('" & numero+1 & "', '" & ctaAbo4 & "', '" & monAbo4 & "', '" & fech & "')"
									conn.execute(sql1)
								end if
								if ctaAbo5 <> 0 then
									sql1 = "INSERT INTO Diario (NumTrans, codigo, abono, fecha) VALUES ('" & numero+1 & "', '" & ctaAbo5 & "', '" & monAbo5 & "', '" & fech & "')"
									conn.execute(sql1)
								end if
								' ********************************************************
								conn.close
								Session("PeriodoCerrado") = "no"
								%>
								<center>
								<img src="../../imagenes/info.png">
								<h1 style="font-size:25pt;color:rgb(0,126,179);">
								Partida guardada en libro diario!!
								<br>
								<br>
								<input type ="button" value="Nueva Transaccion" onClick="window.location='nueva_transaccion.asp';">
								</h1>
								</center>
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