<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
					<script language="javascript" src="forms.js"></script>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="NuevaOrdenFabricacion_salvacolor">
					<param name="movie" value="../../flash/NuevaOrdenFabricacion_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="NuevaOrdenFabricacion_salvacolor"
					width="400" height="70"
					src="../../flash/NuevaOrdenFabricacion_salvacolor.swf"
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
					<table border="0" width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td valign="top" class="content" align="center">
								<form name="orden" method="post" action="proces_orden.asp" onsubmit="return(validar(this))">
								<table border="0" cellspacing="0" align="center"> 
									<tr>
										<td align="right">
											Fecha de expedicion:
										</td>
										<td align="left">
											<input type="text" name="fecha" value="<%=FormatDateTime(now,2)%>" size="10" maxlength="10">
										</td>
										<td align="right">
											No. de Orden:
										</td>
										<td align="left">
											<%
											'Creacion del Objeto para conectarse a la base de datos 
											Set conn=Server.CreateObject("ADOdb.Connection")
											'Se abre la conexión a la base de datos
											conn.Open "Datos","","" 
											sql="SELECT NumOrden   FROM  ordenes ORDER BY NumOrden"
											set r = conn.Execute(sql)
											while NOT(r.EOF)
												num=r("NumOrden")
												r.MoveNext
											wend
											if num = 0 then
												num=0
											end if
											num=num+1
											%>
											<input type="text" name="orden" value="<%=num%>" size="10" onfocus="this.blur()">
										</td>
									</tr>
									<tr>
										<td align="right">
											Producto:
										</td>
										<td align="left">
											<select name="producto">
												<option value="0">-listado de productos-</option>
												<%
												sql1="SELECT Catalogo.NombreCuenta,  Catalogo.Codigo FROM Catalogo WHERE Catalogo.Codigo>=1022 and Catalogo.Codigo<=1024"
												Set R = conn.Execute(sql1)
												while Not(R.EOF)
													cont=cont+1
													cod = R("Codigo")
													nom = R("NombreCuenta")
													Response.Write("<option value= '" & cod & "'>"& nom &"</option>")
													R.MoveNext
												wend
												%>
											</select>
										</td>
										<td align="right">
											Cantidad:
										</td>
										<td align="left">
											<input type="text" name="cantidad" size="10" onblur="validar1(this)">
										</td>
									</tr>
								</table>
								<br>
								<table  border="1" align="center" style="border-spacing: 0">
									<tr>
										<th colspan="2">Materia Prima</th>
										<th colspan="3">Mano de Obra</th>
										<th colspan="2">GIF</th>
									</tr>
									<tr>
										<th>Material</th>
										<th>Cantidad</th>
										<th>No. de Obreros</th>
										<th>CostoxHora</th>
										<th>No de Horas</th>
										<th>Tasa</th>
										<th>Importe</th>
									</tr>
									<tr>
										<td>
											<select name="mat1">
												<option value="0" selected >-listado de MP-</option> 
												<%
												sql="SELECT Catalogo.NombreCuenta, inventario.codigo FROM Catalogo, inventario WHERE Catalogo.Codigo=inventario.codigo"
												Set resul = conn.Execute(sql)
												cont=0
												while Not(resul.EOF)
													cont=cont+1
													cod = resul("codigo")
													nom = resul("NombreCuenta")
													Response.Write("<option value= '" & cod & "'>"& nom &"</option>")
													resul.MoveNext
												wend
												%>
											</select>
										</td>
										<td><input name="cant1" type="text" size="10" onblur="validar1(this)"></td>
										<td><input name="obrero1" type="text" size="13" onblur="validar1(this)"></td>
										<td><input name="costo1" type="text" size="10" onblur="validar1(this)"></td>
										<td><input name="hora1" type="text" size="10" onblur="validar1(this)"></td>
										<td><input name="tasa1" type="text" size="10" onblur="validar1(this)"></td>
										<td><input name="importe1" type="text" size="10" onblur="validar1(this)"></td>
									</tr>
									<% if cont>1 then
									for i=2 to cont
									%>
									<tr>
									<td>
										<select name="mat<%=i%>">
											<option value="0" selected>-listado de MP-</option> 
											<%
											resul.MoveFirst
											while Not(resul.EOF)
												cod = resul("Codigo")
												nom = resul("NombreCuenta")
												Response.Write("<option value= '" & cod & "'>"& nom &"</option>")
												resul.MoveNext
											wend
											session("num")=cont
											%>
										</select>
									</td>
									<td><input name="cant<%=i%>" type="text" size="10" onblur="validar1(this)"></td>
									<td><input name="obrero<%=i%>" type="text" size="13" onblur="validar1(this)"></td>
									<td><input name="costo<%=i%>" type="text" size="10" onblur="validar1(this)"></td>
									<td><input name="hora<%=i%>" type="text" size="10" onblur="validar1(this)"></td>
									<td><input name="tasa<%=i%>" type="text" size="10" onblur="validar1(this)"></td>
									<td><input name="importe<%=i%>" type="text" size="10" onblur="validar1(this)"></td>
									</tr>
									<%
									next
									End if
									%>
								</table>
								<br><input type="hidden" name="cont" value="<%=cont%>">
								<table border="0" width="300" align="center">
									<tr>
										<td align="center">
											<input type = "submit" name = "aceptar" value = "ACEPTAR">
											<input type = "reset" name = "clear" value = "BORRAR">
										</td>
									</tr> 
								</table>
								</form>
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