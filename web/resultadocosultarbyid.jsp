<%-- 
    Document   : resultadocosultarbyid
    Created on : 22/05/2023, 10:01:24
    Author     : PTOLEDO
--%>

<%@page import="model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Geologica:wght@300&display=swap" rel="stylesheet">
        <title>Resultado Cosultar By ID</title>
        
        
        <style>
            body{
                font-family: 'Geologica', sans-serif;
            }
            h1{
                color: #C8AA6E;
                font-size: 30px;
            }
            .data_alter{
                background-color: #0AC8B9;
                border-radius: 15px;
                border: 2px solid #0AC8B9;
                font-style: cursive;
                padding-top: 10px;
                padding-left: 10px;
                padding-bottom: 10px;
            }
            a{
                background-color: red; /* Green */
                border: none;
                color: white;
                border-radius: 10px;
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        
        <a class="volta" href="/WebApplication1/index.html">Volta</a>
        <h1>Resultado Consultar By ID</h1>
        
        <div class="alter">
            <%
                Produto p = (Produto) request.getAttribute("p");
            %>
            
            <%if (p.getName() != null) {%>
        
            <div class="data_alter">
                ID..........: <%out.print(p.getId());%> <BR><BR>
                NAME...: <%out.print(p.getName());%> <BR><BR>
                DESCRIÇÃO.......: <%out.print(p.getDescricao());%> <BR><BR>
                PREÇO.....: <%out.print(p.getPreco());%> <BR><BR>
            </div>
            <%} else {%>
            <h2>Produto não encontrado.</h2>
            <%}%>
        </div>
    </body>
</html>
