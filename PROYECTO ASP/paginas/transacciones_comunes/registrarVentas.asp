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
					tipoVenta = Request.Form("tipo") 
					codigo = Request.Form("codigo")
					codi = Request.Form("pt")
					orden = Request.Form("orden")
					monto = Request.Form("monto")
					pago = Request.Form("coc")
					fech = Date()
					set conn = Server.CreateObject("ADODB.Connection")
					conn.open "Datos","",""
					cad = "SELECT * FROM Diario"
					set L = conn.execute(cad)
					While Not (L.EOF)
						numero = L("NumTrans")
						L.MoveNext
					Wend
					if numero = "" then
						numero = 0
					end if   
					costo=Round((monto/1.1), 2)
					if(pago = 1) then
						cuenta1 = 1000	'Caja
					else
						cuenta1 = 1002	'Cuentas por Cobrar
					end if
					cuenta2 = 5000	'Ingreso por Venta
					cuenta3 = 4000	'Costo de Ventas
					if(tipoVenta = 1) then
						cuenta4=codigo
						sql="DELETE FROM ordenes WHERE NumOrden="&orden
						conn.execute(sql)
					else
						cuenta4=codi	'Foto Acabado o Foto al Instante o Fotografía Publicitaria
					end if
					sql1 = "INSERT INTO Diario (NumTrans, codigo, cargo, fecha) VALUES ('" & numero+1 & "', '" & cuenta1 & "', '" & monto & "', '" & fech & "')"
					sql2 = "INSERT INTO Diario (NumTrans, codigo, abono, fecha) VALUES ('" & numero+1 & "', '" & cuenta2 & "', '" & monto & "', '" & fech & "')"
					sql3 = "INSERT INTO Diario (NumTrans, codigo, cargo, fecha) VALUES ('" & numero+1 & "', '" & cuenta3 & "', '" & costo & "', '" & fech & "')"
					sql4 = "INSERT INTO Diario (NumTrans, codigo, abono, fecha) VALUES ('" & numero+1 & "', '" & cuenta4 & "', '" & costo & "', '" & fech & "')"
					conn.execute(sql1)
					conn.execute(sql2)
					conn.execute(sql3)
					conn.execute(sql4)
					conn.close
					%>
					<center>
					<img src="../../imagenes/info.png">
					<h1 style="font-size:25pt;color:rgb(0,126,179);">
					Partida guardada en libro diario!!
					<br>
					<br>
					<input type ="button" value="OK" onClick="window.open('../inicio/bienvenido.asp', '_top');">
					</h1>
					</center>
				</td>
			</tr>
		</table>
	</body>
</html>