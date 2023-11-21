<%-- 
    Document   : cliente.jsp
    Created on : 20 de nov. de 2023, 16:17:55
    Author     : Usuario
--%>
<%@page import="java.util.List"%>
<%@page import="model.Servico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<br>
        <title>CATÁLOGO DE SERVIÇOS DE TI</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Geologica:wght@300&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            
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
                color: black;
            }
            .h2 {
                text-align: center;
                color: black;
                font-size: 15pt;
            }
        </style>
    </head>
    <body>
        <div class="title" ><h1 style="background-color: lightblue">CATÁLOGO DE SERVIÇOS DE TI</h1></div><br>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div style="background-color: lightblue;" class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
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
        <%
            List<Servico> iserv = (List<Servico>) request.getAttribute("iserv");
        %> 
                <h1>Catálogos de Serviços: Clientes</h1>
        <br>
        <div class="catalogo">
            <table>
                      <section style="text-align: center;">    
                          <div class="container">
                            <a style="font-size: 18pt;" href="#">Serviço 1</p>
                            <a style="font-size: 18pt;" href="Catalogo_Segurança_Transacao.jsp">Serviço 2 </p>
                            <a style="font-size: 18pt;" href="Catalogo_Suporte.jsp">Serviço 3</a>   
                            <p> </p>        
                        </div>
                      </section>
            </table>
        </div>
    </body>
</html>
