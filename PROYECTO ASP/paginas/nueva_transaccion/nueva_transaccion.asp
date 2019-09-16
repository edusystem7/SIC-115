<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<script language="JavaScript" src = "forms.js"></script>
					<script language = "javascript" src = "visual.js"></script>
					<link rel="stylesheet" href="estilo.css" type="text/css">
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
							<td valign="top" class="content">
								<form name = "form1" method = "post" action = "registrarPartida.asp" OnSubmit = "return(validar(this));">
									<table align = "center">
									<tr>
										<th colspan = "6">CREAR PARTIDA</th>              
									</tr>
									<tr>
										<th colspan = "3">CARGO</th>
										<th colspan = "3">ABONO</th>
									</tr>
									<%
									Dim Conexion,sql, List, cod, nom
									Set Conexion = Server.CreateObject("ADODB.Connection")
									Conexion.open "Datos","",""
									sql="SELECT * FROM catalogo ORDER BY NombreCuenta"
									x = 1
									for i = 1 to 5
										%>
										<tr>
											<!--------------------------------CARGO-------------------------------->
											<!--cheque-->
											<td>
												<%if(i>1) then%>
													<input type = "checkbox" name = "w<%=x%>" onclick = "habilitar(this)">
												<%else%>
													&nbsp;
												<%end if%>
											</td>
											<!--lista-->
											<td>              
												<select name="cc<%=i%>" <%if(i>1)then%>id = "capa<%=x%>" class = "oculto" <%end if %>>
													<%  
													set List = Conexion.execute(sql)
													While Not (List.EOF)
														cod = List("Codigo")
														nom = List("NombreCuenta")
														Response.Write("<option value= '" & cod &"' >" & nom & "</option>")
														List.MoveNext
													Wend
													%> 
												</select>
												<%if(i>1) then %>
													<select name = "desact" id = "capa<%=x+1%>" disabled>
														<option>Selecciona una cuenta</option>
													</select>
												<%end if %>
											</td>
											<!--texbox-->
											<td>
												<input type = "text" size = "6"  maxlength = "10" name = "mc<%=i%>"<%if(i>1)then%> id = "capa<%=x+2%>" class = "oculto" <%end if %>>
												<%if(i>1) then %>
												<input id="capa<%=x+3%>" type = "text" size = "6"  maxlength = "10" name = "desact" disabled>    
												<%end if %>
											</td>
											<!--------------------------------ABONO-------------------------------->
											<!--cheque-->
											<td>
												<%if(i>1) then%>
													<input type = "checkbox" name = "w<%=x+4%>"  onclick = "habilitar(this)">
												<%else%>
													&nbsp;
												<%end if%>
											</td>
											<!--lista-->
											<td>              
												<select name = "ca<%=i%>"<%if(i>1)then%> id = "capa<%=x+4%>" class = "oculto" <%end if %>>
													<% 
													set List = Conexion.execute(sql) 
													While Not (List.EOF)
														cod = List("Codigo")
														nom = List("NombreCuenta")
														Response.Write("<option value= '" & cod &"' >" & nom & "</option>")
														List.MoveNext
													Wend
													%>
												</select>
												<%if(i>1) then %>
													<select name = "desact" id = "capa<%=x+5%>" disabled>
														<option>Selecciona una cuenta</option>
													</select>
												<%end if %>
											</td>
											<!--texbox-->
											<td>
											<input type = "text" size = "6" maxlength = "10" name = "ma<%=i%>"<%if(i>1)then%> id = "capa<%=x+6%>" class = "oculto" <%end if %>>
											<%if(i>1) then %>
											<input id="capa<%=x+7%>" type = "text" size = "6"  maxlength = "10" name = "desact" disabled>    
											<%end if %>
											</td>
										</tr> 
										<% 
										if(i>1)then
											x = x + 8
										end if
									next 'fin for
									Conexion.close  
									%> 
									<tr>            
										<th colspan = "3"><br><input type = "submit" name = "aceptar" value = "ACEPTAR"></th>
										<th colspan = "3"><br><input type = "button" name = "cancelar" value = "CANCELAR"OnClick = "window.location = '../inicio/bienvenido.asp';"></th>
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