<%-- 
    Document   : index
    Created on : 10/11/2023, 10:44:55
    Author     : alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <br>
        <div class="title" ><h1 style="background-color: lightblue">CATÁLOGO DE SERVIÇOS DE TI</h1></div>
        <a class="nav-link" href="#">Login</a>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div style="background-color: lightblue;" class="container-fluid">
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
        <h1>Catálogos de Serviços</h1>
        <br>
        <div class="catalogo">
            <table>
                      <section style="text-align: center;">    
                          <div class="container">
                            <a style="font-size: 18pt;" href="Catalogo_Gerenciamento.jsp">Catálogo de Plataforma de Comércio Eletrônico e Gerenciamento de Pedidos</a>
                            <p> Catálogo detalharia os serviços oferecidos para manutenção, atualização e suporte à plataforma de comércio eletrônico. 
                                Incluiria informações sobre quem pode solicitar melhorias na plataforma, os processos para pedidos de novas funcionalidades ou ajustes, e 
                                as ferramentas utilizadas para gerenciar essas demandas. </p>
                            <a style="font-size: 18pt;" href="Catalogo_Segurança_Transacao.jsp">Catálogo de Segurança de Dados e Transações Online</a>
                            <p>Aqui estariam listados os serviços de segurança cibernética oferecidos pela TI para proteger as transações dos clientes e a integridade dos dados da empresa. 
                                Incluiria descrições sobre quem pode solicitar auditorias de segurança, os processos para implementação de medidas de segurança, e 
                                as ferramentas utilizadas para garantir a proteção dos sistemas.</p>
                            <a style="font-size: 18pt;" href="Catalogo_Suporte.jsp">Catálogo de Suporte ao Cliente e Experiêncio do Usuário</a>   
                            <p> Esse catálogo destacaria os serviços de suporte ao cliente e melhoria da experiência do usuário na plataforma de venda de fantasias. 
                                Incluiria informações sobre quem pode solicitar assistência ao cliente, os processos para relatar problemas ou sugerir melhorias na experiência do usuário, e 
                                as ferramentas disponíveis para gerenciar essas demandas de forma eficiente.</p>        
                        </div>
                      </section>
            </table>
        </div>
    </body>
</html>
