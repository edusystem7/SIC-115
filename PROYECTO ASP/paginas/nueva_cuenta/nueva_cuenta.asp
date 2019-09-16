<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else
	Response.Redirect "../sesion/permiso.asp"
end if%>
					<script language="Javascript">
						function validar(f){
							if(f.nombre.value == ""){
								alert("Debe ingreser el nombre de la cuenta");
								f.nombre.focus();
								return false;
							}
							if(f.codigo.value == ""){
								alert("Debe ingreser el codigo de la cuenta");
								f.codigo.focus();
								return false;
							}
							return true;
						}
					</script>
					<div class="pagetitle" align="center">					
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="NuevaCuenta_salvacolor">
					<param name="movie" value="../../flash/NuevaCuenta_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="NuevaCuenta_salvacolor"
					width="400" height="70"
					src="../../flash/NuevaCuenta_salvacolor.swf"
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
								<table>
									<form name = "f" action="agregar.asp" method="post" onsubmit="return(validar(this))">
									<tr>
										<td align="right">
											Nombre Cuenta:
										</td>
										<td>
											<input type="text" name="nombre" size="25">
										</td>
									</tr>
									<tr>
										<td align="right">
											Tipo Cuenta:
										</td>
										<td>
											<select name = "tipo">
											   <option value = "0">-listado de tipos de cuenta-</option>
											   <option value = "1">Activo</option>
											   <option value = "2">Pasivo</option>
											   <option value = "3">Capital</option>
											   <option value = "4">Gastos</option>
											   <option value = "5">Ingresos</option>
											 </select>
										</td>
									</tr>
									<tr>
										<td colspan=2 align="center">
											<br><input type="submit" value="ACEPTAR">
										</td>
									</tr>
									</form>
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