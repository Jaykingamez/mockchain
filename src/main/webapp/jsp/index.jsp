<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Mockchain</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<jsp:include page="alert.jsp" />
<body>
	<header class="text-center">
		<h1 class="mb-3">Welcome to Mockchain</h1>
		<h3 class="mb-0">An educational Blockchain model</h3>
		<img class="mb-1" src="${pageContext.request.contextPath}/images/mockchain.png" alt="Mockchain Logo" height="222" >
	</header>
	<main>
		<div class="text-center mb-5">
			<a class="btn btn-success" href="register">Register</a> <a
				class="btn btn-danger" href="login">Login</a>
		</div>
		<c:if test="${requestScope.entry != null}">
			<div class="container col-md-6 mb-5">
				<div class="card">
					<div class="card-body">
						<c:if test="${requestScope.entry == 'register'}">
							<form action="register" method="post">
								<h2 class="text-center">Registration Form</h2>
						</c:if>
						<c:if test="${requestScope.entry == 'login'}">
							<form action="login" method="post">
								<h2 class="text-center">Login Form</h2>
						</c:if>
						<fieldset class="form-group">
							<label><h6>Username</h6></label> <input type="text" class="form-control"
								name="username" required="required">
						</fieldset>
						<fieldset class="form-group">
							<label><h6>Password</h6></label> <input type="password"
								class="form-control" name="password" required="required">
						</fieldset>
						<div class="text-center">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
						</form>
					</div>
				</div>
			</div>
		</c:if>
	</main>
	<footer class="footer border-top pt-3">
		<div class="container-fluid text-center">
			<p>Mockchain is a submission for the hackathon hacksingapore
				(hacksg) under the track "The Era of Blockchain & Trust" It seeks to
				be an educational tool that can simply explain blockchain in an
				interactive fashion, improving people's perception towards the trust
				technology.</p>
		</div>
	</footer>
</body>
</html>