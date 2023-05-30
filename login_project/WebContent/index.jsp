<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
	 <link rel="stylesheet" href="style.css"> 
</head>
<body>

	<%
//response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");

if(session.getAttribute("uname") == null)
{
	
	response.sendRedirect("login.jsp");
	System.out.println("heeee");
}
//welcome ${uname}
%>


	<nav id="demo" class="navbar navbar-expand-lg bg-body-tertiary" >
		<div  class="container-fluid">
			<a class="navbar-brand" id="name" href="#">${uname} </a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Features</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Pricing</a>
					</li>

					<a href="logout"><button type="button"
							class="btn btn-outline-primary">Log out</button></a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>