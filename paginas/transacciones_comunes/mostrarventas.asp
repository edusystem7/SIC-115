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
					<h2>Orden de Fabricacion</h2>
					<%
					orden = Request.form("orden")
					tipo = Request.form("tipo")
					Set Conexion = Server.CreateObject("ADODB.Connection")
					Conexion.open "Datos","",""
					Dim sql, List
					sql="SELECT Catalogo.NombreCuenta,  ordenes.Monto, ordenes.PrecioU, ordenes.Cantidad, ordenes.codigo FROM ordenes, Catalogo WHERE ordenes.codigo=Catalogo.codigo and ordenes.NumOrden="&orden&" ORDER BY NumOrden"
					set List = Conexion.execute(sql)
					precio=List("PrecioU")
					p=precio*1.1
					cantidad=List("Cantidad")
					m=p*cantidad
					%>
					<form name = "form1" method = "post" action = "registrarVentas.asp" OnSubmit = "return(validar2(this));">
					<table cellspacing="0" align="center"> 
						<tr>
							<th align="right" colspan="2">
								No. de Orden:
							</th>
							<td align="left" colspan="2">
								<input type="text" name="orden" value="<%=orden%>" size="10" onfocus="this.blur()" hidden>
								<%=orden%>
							</td>
						</tr>
						<tr>
							<th align="right">
								Producto:
							</th>
							<td align="left">
								<input type="text" name="producto" value="<%=List("NombreCuenta")%>" size="10" onfocus="this.blur()" hidden>
								<%=List("NombreCuenta")%>
							</td>
							<th align="right">
								Cantidad:
							</th>
							<td align="left">
								<input type="text" name="cantidad" value="<%=cantidad%>" size="10" onfocus="this.blur()" hidden>
								<%=cantidad%>
							</td>
						</tr>
						<tr>
							<th align="right">
								Precio Unitario:
							</th>
							<td align="left">
								<input type="text" name="precio" value="<%=p%>" size="10" onfocus="this.blur()" hidden>
								$<%=p%>
							</td>
							<th align="right">
								Monto Total:
							</th>
							<td align="left">
								<input type="text" name="monto" value="<%=m%>" size="10" onfocus="this.blur()" hidden>
								$<%=m%>
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center">
								<input type = "radio" name = "coc" value = "1" checked = "true">Efectivo<br>
								<input type = "radio" name = "coc" value = "2">Credito<br>
						</tr>
						<tr>
							<td colspan="4" align="center">
								<br>
								<input type = "submit" name = "aceptar" value = "ACEPTAR">
								<input type = "BUTTON" name = "cancelar" value = "CANCELAR" onclick="window.location='ventas.asp?tipo=1'">
								<input type = "hidden" name = "codigo" value = "<%= List("codigo") %>">
								<input type = "hidden" name = "tipo" value = "1">
							</td>
						</tr>
					</table>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>