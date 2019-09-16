<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
					<script language = "javascript" src = "../../scripts/formularios2.js"></script>
					<script language="Javascript">
						function validar(f){
							if(f.usuario.value == 0){
							   alert("Debe seleccionar un empleado");
							   return false;
							}
							return true;
						}
				  </script>
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="ModificarEmpleado_salvacolor">
					<param name="movie" value="../../flash/ModificarEmpleado_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="ModificarEmpleado_salvacolor"
					width="400" height="70"
					src="../../flash/ModificarEmpleado_salvacolor.swf"
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
							  <form method="get" action="modificar2.asp" onsubmit="return(validar(this))">
								   <table>
										 <tr>
											<th align="center">Seleccionar un empleado</th> 
										 </tr>
										 <tr>
											<td align="center">
												<select name="usuario">
												  <option value="0">-listado de empleados-</option>
												<%
												  Dim conn
												  Set conn = Server.CreateObject("ADODB.Connection")
												  conn.open "Datos","",""
												  Dim sql, lista
												  sql="SELECT * FROM Empleados"
												  set lista = conn.execute(sql)
												  dim log
												  ' se obtienen los datos de los usuarios y se llena la lista

												  While Not (lista.EOF)
													  log = lista("Apellidos")
													  ' se crean las opciones de la lista desplegable

													  Response.Write("<option value= '" & log &"' >" & log & "</option>" )
													  lista.MoveNext
												  Wend
												  conn.close
												%>
												</select>
											 </td>
										  </tr>
										  <tr>
											 <td align="center"> 
												<br><input type="submit" value="Aceptar">
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