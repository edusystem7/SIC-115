<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
					<script language = "javascript" src = "../../scripts/formularios.js"></script>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="EliminarEmpleado_salvacolor">
					<param name="movie" value="../../flash/EliminarEmpleado_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="EliminarEmpleado_salvacolor"
					width="400" height="70"
					src="../../flash/EliminarEmpleado_salvacolor.swf"
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
								Dim conn, SQL, log, nom, apel

								apel = Request.QueryString("empleado")

								set conn=Server.CreateObject("ADODB.Connection")
								conn.open "Datos","",""

								SQL="SELECT * FROM Empleados WHERE Apellidos = '" & apel & "'"
								SET Lista = conn.execute(SQL)


								nom=Lista("Nombres")
								puesto=Lista("Puesto")
								salario=Lista("Salario")
							  %>
							 <table>
								   <tr> 
									  <th align="right">Nombre del Empleado:</th>
									  <td align="left"><%=apel%>, <%=nom%></td>
									  </tr>

								   <tr> 
									  <th align="right">Puesto:</th>
									  <td align="left"><%=Puesto%></td>
								   </tr>

								   <tr> 
									  <th align="right">Salario:</th>
									  <td align="left"><%=salario%></td>
								   </tr>
								   <tr>
									  <form name="user" method="get" action="eliminar.asp">
										  <td colspan="2" align="center"><br><input type="submit" name="eliminar" value="ELIMINAR"></td>
										  <input type="hidden" name="apel" value="<%=apel%>">
									  <form>
								   </tr>
							  </table>
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