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
					tipoCompra = Request.QueryString("tipo")
					if tipoCompra = "1" then Response.write("<h2>Registro de Compras de Materia Prima</h2>") end if
					if tipoCompra = "2" then Response.write("<h2>Registro de Compras de Equipo de Transporte</h2>") end if
					if tipoCompra = "3" then Response.write("<h2>Registro de Compras de Mobiliario y Equipo</h2>") end if

					Dim Conexion 
					Set Conexion = Server.CreateObject("ADODB.Connection")
					Conexion.open "Datos","",""
					Dim sql, List
					dim cod, nom
					%>
					<table>
					<%
					if tipoCompra = "1" then
					sql="SELECT * FROM catalogo WHERE Codigo >= 1028 AND Codigo <= 1035 OR Codigo = 0 ORDER BY Codigo"
					set List = Conexion.execute(sql)
					%>
						<form name = "form1" method = "post" action = "registrarCompras.asp" OnSubmit = "return(validar2(this));">
						<tr>
							<td colspan="2" align="center">
								<select name="mp">
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
							<td align="right">
								Cantidad:
							</td>
							<td>
								<input type = "text" name = "cantidad" maxlength = "10">
							</td>
						</tr>
						<tr>
							<td align="right">
								Precio:
							</td>
							<td>
								<input type = "text" name = "precio" maxlength = "10">
							</td>							
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type = "radio" name = "coc" value = "1" checked = "true">Efectivo<br>
								<input type = "radio" name = "coc" value = "2">Credito<br>
								<input type = "hidden" name = "tipo" value = "<%= tipoCompra %>">
								<br><input type = "submit" value = "Aceptar" name = "Aceptar">
							</td>
						</tr>
						</form>
						<%
						Conexion.close
						else
						if tipoCompra = "2" then
						sql="SELECT * FROM catalogo WHERE Codigo = 1042 OR Codigo = 0 ORDER BY Codigo"	'Vehículos
						set List = Conexion.execute(sql)
						end if
						if tipoCompra = "3" then
						sql="SELECT * FROM catalogo WHERE Codigo >= 1036 AND Codigo <= 1041 OR Codigo = 0 ORDER BY Codigo"
						set List = Conexion.execute(sql)
						end if
						%>
						<form name = "form2" method = "post" action = "registrarCompras.asp" OnSubmit = "return(validar3(this));">
						<tr>
							<td colspan="2" align="center">
								<select name="codigo_cuenta">
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
							<td align="right">
								Monto:
							</td>
							<td>
								<input type = "text" name = "cantidad" maxlength = "10">
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type = "radio" name = "coc" value = "1" checked = "true">Efectivo<br>
								<input type = "radio" name = "coc" value = "2">Credito<br>
								<input type = "hidden" name = "tipo" value = "<%= tipoCompra %>">
								<br><input type = "submit" value = "Aceptar" name = "Aceptar">
							</td>
						</tr>
						</form>
					</table>
					<%
					Conexion.close
					end if
					%>
				</td>
			</tr>
		</table>
	</body>
</html>