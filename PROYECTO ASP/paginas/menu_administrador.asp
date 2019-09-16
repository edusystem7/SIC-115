<%if session("autentificado")<>"SI" then
	Response.Redirect "../sesion/acceso.asp"
end if%>
<html lang="es-es" dir="ltr" xml:lang="es-es" xmlns="http://www.w3.org/1999/xhtml" style="display: block;">
	<head>
		<title>Sistema Contable de Fotoestudio Salvacolor S.A. de C.V.</title>
		<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
		<link type="text/css" href="../../estilos/template.css" rel="stylesheet"/>
		<link href="../../imagenes/icono.png" rel="shortcut icon"/>
	</head>
	<body id="minwidth-body">
		<div align="center">
			<object
				classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
				codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,79,0"
				id="BannerCabecera_salvacolor">
				<param name="movie" value="../../flash/BannerCabecera_salvacolor.swf">
				<param name="bgcolor" value="#FFFFFF">
				<param name="quality" value="high">
				<param name="allowscriptaccess" value="samedomain">
				<embed
				type="application/x-shockwave-flash"
				pluginspage="http://www.macromedia.com/go/getflashplayer"
				name="BannerCabecera_salvacolor"
				width="980" height="125"
				src="../../flash/BannerCabecera_salvacolor.swf"
				bgcolor="#F4F4F4"
				quality="high"
				swliveconnect="true"
				allowscriptaccess="samedomain">
				</embed>
			</object>
		</div>
		<div class="h_blue" id="border-top">
			<span class="title">Sistema Contable de Fotoestudio Salvacolor S.A. de C.V.</span>
		</div>
		<div id="header-box">
			<div id="module-menu">
				<ul id="menu">
					<li class="node"><a href="../inicio/bienvenido.asp">Inicio</a></li>
					<li class="node"><a href="#" title="Usuarios">Usuarios</a>
						<ul>
							<li class="node"><a href="../nuevo_usuario/nuevo_usuario.asp" title="Nuevo Usuario">Nuevo Usuario</a></li>
							<li class="node"><a href="../consultar_usuario/consultar_usuario.asp" title="Consultar Usuario">Consultar Usuario</a></li>
							<li class="node"><a href="../modificar_datos_de_usuario/modificar_datos_de_usuario.asp" title="Modificar Usuario">Modificar Usuario</a></li>
							<li class="node"><a href="../eliminar_usuario/eliminar_usuario.asp" title="Eliminar Usuario">Eliminar Usuario</a></li>
						</ul>
					</li>
					<li class="node"><a href="#" title="Empleados">Empleados</a>
						<ul>
							<li class="node"><a href="../nuevo_empleado/nuevo_empleado.asp" title="Nuevo Empleado">Nuevo Empleado</a></li>
							<li class="node"><a href="../consultar_datos_de_empleado/consultar_datos_de_empleado.asp" title="Consultar Empleado">Consultar Empleado</a></li>
							<li class="node"><a href="../modificar_datos_de_empleado/modificar_datos_de_empleado.asp" title="Modificar Empleado">Modificar Empleado</a></li>
							<li class="node"><a href="../eliminar_empleado/reliminar_empleado.asp" title="Eliminar Empleado">Eliminar Empleado</a></li>
							<li class="node"><a href="../planillas/planillas.asp" title="Planilla de Empleados">Planilla de Empleados</a></li>
						</ul>
					</li>
					<li class="node"><a href="#" title="Cuentas">Cuentas</a>
						<ul>
							<li class="node"><a href="../nueva_cuenta/nueva_cuenta.asp" title="Nuevo Cuenta">Nueva Cuenta</a></li>
							<li class="node"><a href="../consulta_de_cuenta/consulta_de_cuenta.asp" title="Consultar Cuenta">Consultar Cuenta</a></li>
							<li class="node"><a href="../eliminacion_de_cuenta/eliminacion_de_cuenta.asp" title="Eliminar Cuenta">Eliminar Cuenta</a></li>
							<li class="node"><a href="../catalogo/catalogo.asp" title="Mostrar Cuentas">Catalogo de Cuentas</a></li>
						</ul>
					</li>
					<li class="node"><a href="#" title="Transacciones">Transacciones</a>
						<ul>
							<li class="node"><a href="../nueva_transaccion/nueva_transaccion.asp" title="Nueva Transaccion">Nueva Transaccion</a></li>
							<li class="node"><a href="../libro_diario/librodiario.asp" title="Mostrar Libro Diario">Mostrar Libro Diario</a></li>
							<li class="node"><a href="../cierre_de_periodo/cierre_de_periodo.asp" title="Cerrar Periodo">Cerrar Periodo Contable</a></li>
							<li class="node"><a href="../cierre_de_periodo/ajustes.asp" title="Ajustes">Ajustes Contables</a></li>
							<li class="node"><a href="../transacciones_comunes/menu.asp" title="Transacciones Comunes">Transacciones Comunes</a>
							</li>
						</ul>
					</li>
					<li class="node"><a href="#" title="Estados Financieros">Estados Financieros</a>
						<ul>
							<li class="node"><a href="../balance_de_comprobacion/balance_de_comprobacion.asp" title="Balance de Comprobacion">Balance de Comprobacion</a></li>
							<li class="node"><a href="../estado_de_resultados/estado_de_resultados.asp" title="Estado de Resultados">Estado de Resultados</a></li>
							<li class="node"><a href="../estado_de_capital/estado_de_capital.asp" title="Estado de Capital">Estado de Capital</a></li>
							<li class="node"><a href="../balance_general/balance_general.asp" title="Balance General">Balance General</a></li>
						</ul>
					</li>
					<li class="node"><a href="#" title="Contabilidad de Costos">Contabilidad de Costos</a>
						<ul>
							<li class="node"><a href="../nueva_ordenfabricacion/norden_fabricacion.asp" title="Nueva Orden de Fabricacion">Nueva Orden de Fabricacion</a></li>
							<li class="node"><a href="../consulta_ordenfabricacion/corden_fabricacion.asp" title="Consultar Orden de Fabricacion">Consultar Orden de Fabricacion</a></li>
							<li class="node"><a href="../estados_costosprod/produventas.asp" title="Finalizar Orden de Fabricacion">Finalizar Orden de Fabricacion</a></li>
						</ul>
					</li>
					<li class="node"><a href="../ayuda/menu_ayuda.asp" title="Ayuda">Ayuda</a>
						<ul>
							<li class="node"><a href= "../ayuda/inicio_sesion.asp" >Inicio de Sesion</a></li>
							<li class="node"><a href="../ayuda/menu_usuarios.asp">Men&uacute; Usuarios</a></li>
							<li class="node"><a href="../ayuda/menu_empleados.asp">Men&uacute; Empleados</a></li>
							<li class="node"><a href="../ayuda/menu_cuentas.asp">Men&uacute; Cuentas</a></li>
							<li class="node"><a href="../ayuda/menu_transacciones.asp">Men&uacute; Transacciones</a></li>
							<li class="node"><a href="../ayuda/menu_estados_financieros.asp">Men&uacute; Estados Financieros</a></li> 
							<li class="node"><a href="../ayuda/menu_contabilidad_costos.asp">Men&uacute; Contabilidad de Costos</a></li> 
							<li class="node"><a href="../ayuda/manual_usuario.asp">Manual de Usuario</a></li>
						</ul>
					</li>
					<li class="node"><a href="../acerca_de/acerca_de.asp" title="Integrantes">Acerca de</a></li>
				</ul>
			</div>
			<div id="module-status">
				<span class="logout"><a href="../sesion/login_salir.asp" title="Cerrar Sesion">Cerrar Sesi&oacute;n</a></span>
			</div>
			<div class="clr"></div>
		</div>
		<div id="content-box">
			<div id="toolbar-box">
				<div class="m">