<%
Session("PeriodoCerrado") = "no"
%>
<%if session("sesion_nombre")="Admin" then%>
	<!--#include file="../menu_administrador.asp"-->
<%else%>
	<!--#include file="../menu_limitado.asp"-->
<%end if%>
					<link rel="stylesheet" type="text/css" media="screen" href="estilo.css" />
					<script src="mootools-1.2.2-core-reducido.js" type="text/javascript"></script>
					<script src="visual.js" type="text/javascript"></script>					
					<div class="pagetitle" align="center">
					<object
					classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
					id="TransaccionesComunes_salvacolor">
					<param name="movie" value="../../flash/TransaccionesComunes_salvacolor.swf">
					<param name="bgcolor" value="#FFFFFF">
					<param name="quality" value="high">
					<param name="allowscriptaccess" value="samedomain">
					<embed
					type="application/x-shockwave-flash"
					pluginspage="http://www.macromedia.com/go/getflashplayer"
					name="TransaccionesComunes_salvacolor"
					width="400" height="70"
					src="../../flash/TransaccionesComunes_salvacolor.swf"
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
								<table width="80%" border="0" cellspacing="0" cellpadding="0" align="center">
								<tr>
								<td>
								<div id="pestanas">
									<ul>
										<li id="pestana1" class="activa"><a href="javascript: void(0);" onclick="cambia_pestana(0)">COMPRAS</a></li>
										<li id="pestana2"><a href="javascript: void(0);" onclick="cambia_pestana(1)">VENTAS</a></li>
										<li id="pestana3"><a href="javascript: void(0);" onclick="cambia_pestana(2)">PAGOS</a></li>
									</ul>
								</div>
								
								<div id="contenedor_pestanas">
									<div id="contenedor1">
										<br>
										<div id="pestanas_compras">
											<ul>
												<li id="pestana_compras1" class="activa"><a href="javascript: void(0);" onclick="cambia_pestana_compras(0)">Materia Prima</a></li>
												<li id="pestana_compras2"><a href="javascript: void(0);" onclick="cambia_pestana_compras(1)">Equipo de Transporte</a></li>
												<li id="pestana_compras3"><a href="javascript: void(0);" onclick="cambia_pestana_compras(2)">Mobiliario y Equipo</a></li>
											</ul>
										</div>
										
										<div id="contenedor_pestanas_compras">
											<div id="contenedor_compras1">
												<iframe width="100%" height="280" src="compras.asp?tipo=1" frameborder="0">
												</iframe>
											</div>
											<div id="contenedor_compras2" class="nover">
												<iframe width="100%" height="280" src="compras.asp?tipo=2" frameborder="0">
												</iframe>
											</div>
											<div id="contenedor_compras3" class="nover">
												<iframe width="100%" height="280" src="compras.asp?tipo=3" frameborder="0">
												</iframe>
											</div>
										</div>
									</div>
									<div id="contenedor2" class="nover">
										<br>
										<div id="pestanas_ventas">
											<ul>
												<li id="pestana_ventas1" class="activa"><a href="javascript: void(0);" onclick="cambia_pestana_ventas(0)">Orden de Fabricacion</a></li>
												<li id="pestana_ventas2"><a href="javascript: void(0);" onclick="cambia_pestana_ventas(1)">Mercaderia</a></li>
											</ul>
										</div>
										
										<div id="contenedor_pestanas_ventas">
											<div id="contenedor_ventas1">
												<iframe width="100%" height="280" src="ventas.asp?tipo=1" frameborder="0">
												</iframe>
											</div>
											<div id="contenedor_ventas2" class="nover">
												<iframe width="100%" height="280" src="ventas.asp?tipo=2" frameborder="0">
												</iframe>
											</div>
										</div>
									</div>
									<div id="contenedor3" class="nover">
										<br>
										<div id="pestanas_pagos">
											<ul>
												<li id="pestana_pagos1" class="activa"><a href="javascript: void(0);" onclick="cambia_pestana_pagos(0)">Empleados</a></li>
												<li id="pestana_pagos2"><a href="javascript: void(0);" onclick="cambia_pestana_pagos(1)">Servicios</a></li>
												<li id="pestana_pagos3"><a href="javascript: void(0);" onclick="cambia_pestana_pagos(2)">Mantenimiento</a></li>
												<li id="pestana_pagos4"><a href="javascript: void(0);" onclick="cambia_pestana_pagos(3)">Deudas</a></li>
											</ul>
										</div>
										
										<div id="contenedor_pestanas_pagos">
											<div id="contenedor_pagos1">
												<iframe width="100%" height="280" src="pagos.asp?tipo=1" frameborder="0">
												</iframe>
											</div>
											<div id="contenedor_pagos2" class="nover">
												<iframe width="100%" height="280" src="pagos.asp?tipo=2" frameborder="0">
												</iframe>
											</div>
											<div id="contenedor_pagos3" class="nover">
												<iframe width="100%" height="280" src="pagos.asp?tipo=3" frameborder="0">
												</iframe>
											</div>
											<div id="contenedor_pagos4" class="nover">
												<iframe width="100%" height="280" src="pagos.asp?tipo=4" frameborder="0">
												</iframe>
											</div>
										</div>
									</div>
								</div>
								</td>
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