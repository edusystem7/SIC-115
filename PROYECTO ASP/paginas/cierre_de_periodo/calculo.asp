<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="CierrePeriodoContable_salvacolor">
					<param name="movie" value="../../flash/CierrePeriodoContable_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="CierrePeriodoContable_salvacolor"
					width="400" height="70"
					src="../../flash/CierrePeriodoContable_salvacolor.swf"
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
								dim Suma,SumaIngreso,SumaGasto
								'conecta a la base de datos
								Set cnn1 = Server.CreateObject("ADODB.Connection")
								cnn1.Open "Datos","",""
								Suma=0
								SumaIngreso=0
								SumaGasto=0
								'calcula la sum 																								rango de codigos para las cuenas INGRESOS de 5000 a 5999
								SQL ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 5000 AND Mayor.codigo < 6000) ORDER BY Mayor.codigo"
								set ql=cnn1.execute(SQL)
								while not ql.EOF
									Suma = Suma + abs(ql("Saldo"))
									session("SumaIngreso")=Suma
									ql.movenext
								wend
								''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
								SumaG=0
								'calcula la suma del gasto																                           rango de codigos para las cuenas GASTOS de 4000 a 4999
								SQL1 ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 4000 AND Mayor.codigo < 5000) ORDER BY Mayor.codigo"
								set ql1=cnn1.execute(SQL1)
								while not ql1.EOF
									SumaG = SumaG + ql1("Saldo")
									session("SumaGasto") = SumaG
									ql1.movenext
								wend
								util = Suma - SumaG
								session("utilidad")=util
								''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
								SumaInv=0
								SumaDesinv=0
								'calcula la suma de la inversion																	              			inversiones		CAPITAL y UTILIDADES RETENIDAS
								SQL2 ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 3000 AND Mayor.codigo < 3003) ORDER BY Mayor.codigo"
								set ql=cnn1.execute(SQL2)
								while not ql.EOF 
									SumaInv = SumaInv + abs(ql("Saldo"))
									ql.movenext
								wend
								Tinv = SumaInv + util
								session("Totalinv")=Tinv
								''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
								SDesinv =0
								'calcula la suma de la desinversion																               rango de codigos para las cuenas GASTOS de 4000 a 4999
								SQL1 ="SELECT Catalogo.NombreCuenta, Mayor.codigo, Mayor.saldo FROM Catalogo, Mayor WHERE Catalogo.Codigo=Mayor.codigo AND (Mayor.codigo >= 4050 AND Mayor.codigo < 5000) ORDER BY Mayor.codigo"
								set ql1=cnn1.execute(SQL1)
								while not ql1.EOF
									SDesinv = SDesinv + ql1("saldo")
									session("SumaDesinv")=SDesinv
									ql1.movenext
								wend
								capconta = (Tinv-SDesinv)
								session("kconta")=capconta
								cnn1.Close
								Set cnn1 = Nothing
								%>
								<br>
								<center>
								<img src="../../imagenes/info.png">
								<h1 style="font-size:25pt;color:rgb(0,126,179);">
								Se ha cerrado el periodo satisfactoriamente!!
								<br>
								<br>
								<input type ="button" value="OK" onClick="window.location='../inicio/bienvenido.asp';">
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