<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="LibroDiario_salvacolor">
					<param name="movie" value="../../flash/LibroDiario_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="LibroDiario_salvacolor"
					width="400" height="70"
					src="../../flash/LibroDiario_salvacolor.swf"
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
							Dim Conexion, sql, List
							Set Conexion = Server.CreateObject("ADODB.Connection")
							Conexion.open "Datos","",""
							sql = "SELECT Catalogo.NombreCuenta, Diario.NumTrans, Diario.codigo,Diario.cargo,Diario.abono,Diario.fecha FROM Catalogo, Diario WHERE Catalogo.Codigo=Diario.codigo ORDER BY Diario.NumTrans" 
							set List = Conexion.execute(sql)
							%>
							<table border = "1" width = "75%" bgcolor="white" align="center">
								<tr>
									<th>Numero</th>
									<th>Codigo</th>
									<th>Fecha</th>
									<th>Nombre</th>
									<th>Cargo</th>
									<th>Abono</th>
								</tr>
								<% 
								i = 1
								while not(List.EOF) 
								if(List("NumTrans") <> i) then %>
								<tr>
								<td colspan=6>&nbsp;</td>
								</tr>
								<%
								i = i + 1
								end if 
								%>
								<tr>
								<td align="center"><%= List("NumTrans")%></td>
								<td align="center"><%= List("Codigo")%></td>
								<td align="center"><%= List("Fecha")%></td>
								<td><%= List("NombreCuenta")%></td>
								<td align="center"><%= List("Cargo")%></td>
								<td align="center"><%= List("Abono")%></td>
								</tr>
								<% 
								List.MoveNext
								wend 
								%>
							</table>
							 <% Conexion.close %> 
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