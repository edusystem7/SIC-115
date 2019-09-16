<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html style="display: block;" xmlns="http://www.w3.org/1999/xhtml" xml:lang="es-es" dir="ltr" lang="es-es">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<title>Sistema Contable de Fotoestudio Salvacolor S.A. de C.V.</title>
		<link rel="stylesheet" href="estilos/template.css" type="text/css">
		<link rel="shortcut icon" 		 href="imagenes/icono.png" />
	</head>
	<body>	
	<div id="border-top" class="h_blue">
		<span class="title">Sistema Contable de Fotoestudio Salvacolor S.A. de C.V.</span>
	</div>
		<div id="content-box">
			<div id="element-box" class="login">
				<div class="m wbg">
					<h1 align="center">Inicias Sesión</h1>
					<div id="section-box">
						<div class="m">
						<% if Application("contador")<3 then%>
						<%if Request("error")="0" then%><center><font color="red">Por favor ingrese correctamente su identificador de usuario.</font><script language="JavaScript">SignIn.login.focus();</script></center><%end if%>
						<%if Request("error")="1" then%><center><font color="red">Por favor llene los campos marcados con *</font></center><%end if%>
						<%if Request("error")="3" then%><center><font color="red">Por favor ingrese correctamente su clave.</font><script language="JavaScript">SignIn.password.focus();</script></center><% end if%>
						<%if Request("error")<>"0" and Request("error")<>"1" and Request("error")<>"3" then%><br><%end if%>
						<%end if%>
						<% if Application("contador")>=3 then%><br><%end if%>
							<form id="form-login" runat="server" method="POST" action="paginas/sesion/login_entrar.asp" name="SignIn">
								<fieldset class="loginform">
									<!-- nombre usuario -->
									<label id="mod-login-username-lbl" for="mod-login-username">
										Usuario<% if (Application("contador")<3) and (Request("error")="1" or Request("error")="0") then%><font color="red">*</font><% end if%> 
									</label>
									<% if Application("contador")<3 then%><input name="login" value="<% =Request("log") %>" id="mod-login-username" class="inputbox" size="15" type="text"><%end if%>
									<% if Application("contador")>=3 then%><input disabled id="mod-login-username" class="inputbox" size="15" type="text"><%end if%>
									<!-- password usuario -->
									<label id="mod-login-password-lbl" for="mod-login-password">
										Contrase&ntilde;a<% if (Application("contador")<3) and (Request("error")="1" or Request("error")="0") then%><font color="red">*</font><% end if%> 
									</label>
									<% if Application("contador")<3 then%><input name="password" id="mod-login-password" class="inputbox" size="15" type="password"><%end if%>
									<% if Application("contador")>=3 then%><input disabled id="mod-login-password" class="inputbox" size="15" type="password"><%end if%>
									<!-- boton_login -->
									<div class="button-holder">
										<div class="button1">
											<div class="next">
												<a class="boton_login" href="#" onclick="document.getElementById('form-login').submit();">Conectar</a>
											</div>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					<center>(Se distingue entre mayusculas y minusculas)</center>
					</div>
					<p>Use un nombre de usuario y contraseña válidos para obtener acceso al Sistema Contable de Fotoestudio Salvacolor S.A. de C.V.</p>
					<center><img  src="imagenes/login.png" /></center>
				</div>
				<% if Application("contador")=0 then%><br><br><%end if%>
				<% if Application("contador")>0 and Application("contador")<3 then%><br><center><p>Le quedan <% =3-Application("contador")%> intentos.</center><%end if%>
				<%if Application("contador")=3 then%><br><center><font color=red><p>Ha superado el máximo de intentos al querer conectarse al Sistema Contable de Fotoestudio Salvacolor S.A. de C.V..</p></font></center><% end if%>
				<%if Application("contador")>3 then%><br><center><font color=red><p><blink>Ha superado el máximo de intentos al querer conectarse al Sistema Contable de Fotoestudio Salvacolor S.A. de C.V..</blink></p></font></center><% end if%>
			</div>
			<center><noscript><font color="red">Advertencia! Para poder realizar operaciones correctamente en el Sistema Contable de Fotoestudio Salvacolor S.A. de C.V., debe tener habilitado JavaScript.</font></noscript></center>
		</div>
		<div id="footer"><p class="copyright">Sistema Contable de Fotoestudio Salvacolor S.A. de C.V. &#8226; Derechos Reservados 2012</p></div>
	</body>
</html>