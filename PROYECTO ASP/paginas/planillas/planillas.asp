<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<script language = "javascript" src = "../../scripts/formularios.js"></script>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="PlanillaEmpleados_salvacolor">
					<param name="movie" value="../../flash/PlanillaEmpleados_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="PlanillaEmpleados_salvacolor"
					width="400" height="70"
					src="../../flash/PlanillaEmpleados_salvacolor.swf"
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
								Set conn= Server.CreateObject("ADODB.Connection")
								conn.open "Datos","",""	
								sql="SELECT * FROM Empleados"
								Set spl1= conn.Execute(sql) 
								%>
								<TABLE BORDER="1" bgcolor="white">
									<tr align="center"> 
										<th COLSPAN="2" >Empleado</th>
										<th ROWSPAN="2">Cargo</th> 
										<th ROWSPAN="2">Salario Base</th> 
										<th>Otras Remuneraciones</th>
										<th ROWSPAN="2">T. Devengado</th> 
										<th COLSPAN="3">Retenciones</th>
										<th ROWSPAN="2">Liquido a Pagar</th> 
									</tr> 
									<tr align="center"> 
										<th>Apellidos</th>
										<th>Nombres</th>
										<th>H. extras</th> 
										<th>ISSS</th>
										<th>AFP</th>
										<th>Renta</th>  
									</tr>
									<% 
									while not spl1.EOF 
									sueldos= spl1("Salario")+ spl1("Horas")
									suma= suma+sueldos
									iss= sueldos*.03
									isst= isst+iss
									afp= sueldos*.0625
									afpt= afpt+afp
									ren= sueldos*.02
									rent= rent+ren 
									sueldo=sueldos-iss-afp-ren
									sueldot=sueldot+sueldo  
									%>
									<TR align="CENTER">
										<td><%=spl1("Apellidos")%></td>  
										<td><%=spl1("Nombres")%></td>
										<td><%=spl1("Puesto")%></td>
										<td>$<%=round(spl1("Salario"),2)%></td>
										<td><%=round(spl1("Horas"),2)%></td>
										<td>$<%=round(sueldos,2) %></td>
										<td>$<%=round(iss,2) %></td> 
										<td>$<%=round(afp,2) %></td> 
										<td>$<%=round(ren,2) %></td>
										<td>$<%=round(sueldo,2) %></td>   
									</TR> 
									<%
									spl1.Movenext
									wend
									%>
								</TABLE>
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