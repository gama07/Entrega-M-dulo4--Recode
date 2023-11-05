<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
   
    <!-- fim Stylesheets -->
    
</head>
<body  style="background-color: black;">

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
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h1 class="mt-4" style="color: white;">Atualizar Cliente</h1>
            <form class="mt-4" action="UpdateController" method="post">
                <div class="form-group">
                    <label for="id" style="color: white;">ID:</label>
                    <input type="text" class="form-control text-dark" style="color: black;" id="id" name="id" value="${id}" required>
                </div>
                <div class="form-group">
                    <label for="nome" style="color: white;">Nome:</label>
                    <input type="text" class="form-control text-dark" style="color: black;" id="nome" name="nome" value="${nome}" required>
                </div>
                <div class="form-group">
                    <label for="login" style="color: white;">Login:</label>
                    <input type="text" class="form-control text-dark" style="color: black;" id="login" name="login" value="${login}" required>
                </div>
                <div class="form-group">
                    <label for="senha" style="color: white;">Senha:</label>
                    <input type="password" class="form-control text-dark" style="color: black;" id="senha" name="senha" value="${senha}" required>
                </div>
                <div class="form-group">
                    <label for="cpf" style="color: white;">CPF:</label>
                    <input type="text" class="form-control text-dark" style="color: black;" id="cpf" name="cpf" value="${cpf}" required>
                </div>
                <div class="form-group">
                    <label for="email" style="color: white;">Email:</label>
                    <input type="email" class="form-control text-dark" style="color: black;" id="email" name="email" value="${email}" required>
                </div>
                <button type="submit" class="btn" style="background-color: #29d9d5; color: black;margin-top: 26px;" >Atualizar</button>
            </form>
        </div>
    </div>
</div>
   
    
    
   
    <!-- Rodapé -->
    <footer class="bg-dark text-light text-center py-3 fixed-bottom">
        &copy; 2023 GamaTour. Todos os direitos reservados.
    </footer>

    <!-- scripts do Bootstrap via CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
   