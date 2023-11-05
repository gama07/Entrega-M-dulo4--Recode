<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gama Tour</title>

    <!-- CSS Stylesheets -->
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;500;600&display=swap">
    <link rel="stylesheet" href="passagens.css"> 
     <script>
        $(function() {
            $("#daterange").datepicker();
        });
    </script>
    <!-- fim of CSS Stylesheets -->
</head>
<body>
<body style="background-color: black;">

    <!-- Cabeçalho -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-light">
            <a class="navbar-brand" href="#"><img src="./icon/logobk-removebg-preview.png" width="30" height="30" alt=""></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item"> 
                        <a class="nav-link" href="ReadController">Cadastro</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="passagens.html">Passagens</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contato">Contato</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    
 <div class="container mt-5">
    <h1 class="mt-3 text-center" style="color: white;">Lista de Clientes</h1>
    <div class="text-center mt-3">
        <a href="./cadastro.jsp" class="btn btn-primary mb-4" style="background-color: #29d9d5; color: black;">Criar novo cliente</a>
    </div>
    <table class="table table-hover table-dark ">
        <thead>
            <tr>
                <th scope="col" style="color: white;">Id</th>
                <th scope="col" style="color: white;">Nome</th>
                <th scope="col" style="color: white;">Login</th>
                <th scope="col" style="color: white;">Senha</th>
                <th scope="col" style="color: white;">CPF</th>
                <th scope="col" style="color: white;">Email</th>
                <th scope="col" style="color: white;">Ações</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${clientes}" var="cliente">
                <tr>
                    <th scope="row" style="color: white;">${cliente.id}</th>
                    <td style="color: white;">${cliente.nome}</td>
                    <td style="color: white;">${cliente.login}</td>
                    <td style="color: white;">${cliente.senha}</td>
                    <td style="color: white;">${cliente.cpf}</td>
                    <td style="color: white;">${cliente.email}</td>
                    <td>
                        <a href="UpdateController?id=${cliente.id}" class="btn btn-success">Editar</a>
                        <a href="DeleteController?id=${cliente.id}" class="btn btn-danger">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
 
   
    
	
	
	
	 <!-- Rodapé -->
    <footer class="bg-dark text-light text-center py-3 fixed-bottom">
        &copy; 2023 GamaTour. Todos os direitos reservados.
    </footer>
    
	<!-- scripts do Bootstrap via CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
