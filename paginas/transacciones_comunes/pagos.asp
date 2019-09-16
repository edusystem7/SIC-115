<html lang="es-es" dir="ltr" xml:lang="es-es" xmlns="http://www.w3.org/1999/xhtml" style="display: block;">
	<head>
		<title>Sistema Contable de Fotoestudio Salvacolor S.A. de C.V.</title>
		<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
		<link type="text/css" href="../../estilos/template.css" rel="stylesheet">
		<script src="forms.js" type="text/javascript"></script>
		<style>select{width: 213px;}</style>
	</head>
	<body style="background:#99DBFF;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top" class="content" align="center">
					<%
					Dim Conexion 
					Set Conexion = Server.CreateObject("ADODB.Connection")
					Conexion.open "Datos","",""
					Dim sql, List
					dim cod, nom
					
					tipoPago = Request.QueryString("tipo")
					if tipoPago = "1" then
						Response.write("<h2>Registro de Pagos a Empleados</h2>")
						sql="SELECT * FROM catalogo WHERE Codigo >= 4021 AND Codigo <= 4033 OR Codigo = 0 ORDER BY Codigo"
						'Sueldos o Prestaciones o Seguro social o Incapacidades o Honorarios o Viáticos o Vacaciones o Aguinaldos o Bonificaciones y Gratificaciones o Gastos de Viaje y Representación o Indemnizaciones o Nocturnidad o Horas Extras
					end if
					if tipoPago = "2" then
						Response.write("<h2>Registro de Pagos de Servicios</h2>")
						sql="SELECT * FROM catalogo WHERE Codigo >= 4013 AND Codigo <= 4019 OR Codigo = 0 ORDER BY Codigo"
						'Servicio de Agua o Energía Eléctrica o Servicio de Teléfono o Aseo y Limpieza o Parqueo o Correo o Vigilancia
					end if
					if tipoPago = "3" then
						Response.write("<h2>Registro de Pagos de Mantenimiento</h2>")
						sql="SELECT * FROM catalogo WHERE Codigo >= 4034 AND Codigo <= 4037 OR Codigo = 0 ORDER BY Codigo"
						'Gastos de Instalación o Reparación y Mantenimiento de  Edificios o Reparaciones y Mantenimiento o Mantenimiento de Vehículos
					end if
					if tipoPago = "4" then
						Response.write("<h2>Registro de Pagos de Deudas</h2>")
						sql="SELECT * FROM catalogo WHERE Codigo >= 2000 AND Codigo <= 2010 OR Codigo = 0 ORDER BY Codigo"
						'Proveedores o Cuentas por Pagar o Intereses por Pagar o Seguros por Pagar o Créditos Bancarios o Documentos por Pagar o Hipotecas por Pagar o Acreedores o Prestamos por Pagar o Obligaciones o Impuestos por Pagar
					end if
					
					set List = Conexion.execute(sql)
					%>
					<table>
						<form name = "form" method = "post" action = "registrarPagos.asp" OnSubmit = "return(validar3(this));">
						<tr>
							<td colspan="2" align="center">
								<select name="cod_pago">
									<%
									While Not (List.EOF)
									cod = List("codigo")
									nom = List("NombreCuenta")
									Response.Write("<option value= '" & cod &"' >" & nom & "</option>")
									List.MoveNext
									Wend
									%>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								 Cantidad a pagar:
							</td>
							<td>
								<input type = "text" name = "cantidad" maxlength = "10">
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type = "radio" name = "coc" value = "1" checked = "true">Efectivo<br>
								<input type = "radio" name = "coc" value = "2">Cheque<br>
								<input type = "hidden" name = "tipo" value = "<%= tipoPago %>">
								<br>
								<input type = "submit" value = "Enviar" name = "Aceptar">
							</td>
						</tr>
						</form>
					</table>
					<% tipoPago = Request.QueryString("tipo") %>
				</td>
			</tr>
		</table>
	</body>
</html>