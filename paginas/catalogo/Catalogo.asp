<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="CatalogoCuentas_salvacolor">
					<param name="movie" value="../../flash/CatalogoCuentas_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="CatalogoCuentas_salvacolor"
					width="400" height="70"
					src="../../flash/CatalogoCuentas_salvacolor.swf"
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
							<td valign="top" class="content">              
							  <% 
								Dim Conexion,sql, List, cod, nom
								Set Conexion = Server.CreateObject("ADODB.Connection")
								Conexion.open "Datos","",""
								sql="SELECT * FROM catalogo ORDER BY Codigo"
								set l = Conexion.execute(sql)
								l.MoveNext
							  %>  
							  <table border = "2" align = "center" width = "50%" bgcolor="white">
								  <tr>
									 <th> CODIGO </th>
									 <th> NOMBRE </th>
									 <th> TIPO </th>
								  </tr>
							  <% while NOT(l.EOF)
									 if l("codigo") >=1000 and l("codigo") < 2000 then
										 tipo = "ACTIVO"
									 else
										 if l("codigo") >=2000 and l("codigo") < 3000 then
											tipo = "PASIVO"
										 else
											if l("codigo") >=3000 and l("codigo") < 4000 then
											   tipo = "CAPITAL"
											else
											   if l("codigo") >=4000 and l("codigo") < 5000 then
												  tipo = "GASTOS"
											   else
												  tipo = "INGRESOS"
											   end if
											end if
										 end if
									 end if    
							  %>   
								  <tr>
									 <td> <%=l("codigo") %> </td>
									 <td> <%=l("NombreCuenta") %> </td>
									 <td> <%= tipo %> </td>
								  </tr>
							  <% l.MoveNext 
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