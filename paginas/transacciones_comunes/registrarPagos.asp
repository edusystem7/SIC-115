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
					tipoPago = Request.Form("cod_pago") 
					Monto = Request.Form("cantidad")
					pago = Request.Form("coc")
					fech = Date()
					Dim Monto, cuenta1, cuenta2
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
					cuenta1 = tipoPago
					if(pago = 1) then
						cuenta2 = 1000	'Caja
					else
						cuenta2 = 1001	'Bancos
					end if
					sql1 = "INSERT INTO Diario (NumTrans, codigo, cargo, fecha) VALUES ('" & numero+1 & "', '" & cuenta1 & "', '" & Monto & "', '" & fech & "')"
					sql2 = "INSERT INTO Diario (NumTrans, codigo, abono, fecha) VALUES ('" & numero+1 & "', '" & cuenta2 & "', '" & Monto & "', '" & fech & "')"
					conn.execute(sql1)
					conn.execute(sql2)
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