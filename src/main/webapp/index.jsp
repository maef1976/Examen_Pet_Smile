<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<title>Login</title>
</head>
<body>
<center>
<section class="vh-100">
		<div class="container py-5 h-100">
		  <div class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-12 col-md-8 col-lg-6 col-xl-5">
			  <div class="card shadow-2-strong" style="border-radius: 1rem;">
				<div class="card-body p-5 text-center">
				<form action="profile/controller/Sign_in_controller.jsp" method="POST" class="needs-validation">
				  <h3 class="mb-5">Pet Smile</h3>
	  
				  <div class="form-outline mb-4">
					<input type="text" id="nombreUsuario" name="nombreUsuario"class="form-control form-control-lg" placeholder="Usuario" required autofocus/>
				  </div>
	  
				  <div class="form-outline mb-4">
					<input type="password" id="password" name="password"class="form-control form-control-lg" placeholder="Password" required autofocus/>
				  </div>
				  <div>
	  				<%
					String message=(String)session.getAttribute("login_message");
					if(message!=null){
					out.println(message);
					session.removeAttribute("login_message");
					}
					%>
				  </div>
				  <button class="btn btn-secondary btn-lg btn-block" type="submit" id="loginBtn">Login</button>
				</form>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </section>
</center>
</body>
</html>
