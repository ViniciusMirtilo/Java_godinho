<%-- 
    Document   : index
    Created on : 21/11/2023, 11:33:59
    Author     : alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Geologica:wght@300&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>
            <style>
            body{
                font-family: 'Geologica', sans-serif;
            }
            .inf{
                background-color: #0AC8B9;
                border-radius: 15px;
                border: 2px solid #0AC8B9;
                font-style: cursive;
                padding-top: 10px;
                padding-left: 10px;
                padding-bottom: 10px;
            }
            .inf input{
              border-radius: 10px;  
            }
            
            .title{
                color: #C8AA6E;
                font-size: 20px;
            }
            .button input{
                font-family: 'Geologica', sans-serif;
                background-color: #C8AA6E;
                color: black;
                border-radius: 10px;
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
            }
            .catalogo, h1 {
                text-align: center;
            }

        </style>
    <body>
           <body>
        <br>
        <div class="title"><h1>CATÁLOGO DE SERVIÇOS DE TI</h1></div>
        <a class="nav-link" href="#">Cadastro</a>
        <a class="nav-link" href="#">Login</a>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cliente.jsp">Cliente</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Colaborador</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Fornecedor</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>                    
                </div>               
            </div>          
        </nav>
        <br>
        <h1>Gerenciamento!</h1>
    </body>
</html>
