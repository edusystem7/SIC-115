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
					tipoVenta = Request.QueryString("tipo")
					if tipoVenta = "1" then Response.write("<h2>Registro de Ventas de Orden de Fabricacion</h2>") end if
					if tipoVenta = "2" then Response.write("<h2>Registro de Ventas de Mercaderia</h2>") end if
					Dim Conexion
					Set Conexion = Server.CreateObject("ADODB.Connection")
					Conexion.open "Datos","",""
					Dim sql, List
					dim cod, nom
					%>
					<table>
					<%
					if tipoVenta = "1" then 
					sql="SELECT ordenes.NumOrden, Catalogo.NombreCuenta FROM ordenes, Catalogo WHERE ordenes.codigo=Catalogo.codigo and ordenes.codigo>=1025 and ordenes.codigo<=1027 ORDER BY NumOrden"
					set List = Conexion.execute(sql)
					%>
						<form name = "form1" method = "post" action = "mostrarventas.asp" OnSubmit = "return(validar3(this));">
						<tr>
							<td>
								<select name="orden" align="center">
									<option value ="0">Seleccione una orden</option>
									<%
									While Not (List.EOF)
									cod = List("NumOrden")
									nom = List("NombreCuenta")
									Response.Write("<option value= '" & cod &"' >" & cod &"- "&nom&"</option>")
									List.MoveNext
									Wend
									%>
								</select>
							</td>
						</tr>
						<tr>
							<td align="center">
								<br>
								<input type = "hidden" name = "tipo" value = "<%= tipoVenta %>">
								<input type = "submit" value = "Aceptar" name = "Aceptar"> 
							</td>
						</tr>
						<tr>
							<td align="center">
								<br><br>
								<input type ="button" value="Nueva Orden de Fabricación" onClick="window.open('../nueva_ordenfabricacion/norden_fabricacion.asp', '_top');">
							</td>
						</tr>
						</form>						
						<%
						'Conexion.close
						end if
						if tipoVenta = "2" then
						sql="SELECT * FROM catalogo WHERE Codigo >= 1022 AND Codigo <= 1024 OR Codigo = 0 ORDER BY Codigo"
						set List = Conexion.execute(sql)
						%>
						<form name = "form2" method = "post" action = "registrarVentas.asp" OnSubmit = "return(validar3(this));">
						<tr>
							<td colspan="2" align="center">
								<select name="pt">
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
							<td align="center">
								Monto:
							</td>
							<td>
								<input type = "text" name = "monto" maxlength = "10">
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type = "radio" name = "coc" value = "1" checked = "true">Efectivo<br>
								<input type = "radio" name = "coc" value = "2">Credito<br>
								<input type = "hidden" name = "tipo" value = "<%= tipoVenta %>">
								<br>
								<input type = "submit" value = "Aceptar" name = "Aceptar">
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