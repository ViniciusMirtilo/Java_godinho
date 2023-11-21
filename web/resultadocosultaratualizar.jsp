<%-- 
    Document   : resultadocosultaratualizar
    Created on : 22/05/2023, 10:54:41
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
            .alter{
                background-color: #0AC8B9;
                border-radius: 15px;
                border: 2px solid #0AC8B9;
                font-style: cursive;
                padding-top: 10px;
                padding-left: 10px;
            }
            .alter input{
                 border-radius: 10px;  
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
        </style>
    </head>
    <body>
        
        <a class="volta" href="/WebApplication1/index.html">Volta</a>
        <h1>Resultado Consultar By ID</h1>
        
        <%
            Produto p = (Produto) request.getAttribute("p");
        %>
        <%if (p.getName() != null) {%>

        <form name="f1" action="Controle_Produto" method="GET">
            <div class="alter">
                ID..........: <%out.print(p.getId());%> <input type="hidden" name="txtid" value="<%out.print(p.getId());%>"> <BR><BR>
                NAME...: <input type="text" name="txtcname" value="<%out.print(p.getName());%>">  <BR><BR>
                DESCRICAO.........: <input type="text" name="txtdescricao" value="<%out.print(p.getDescricao());%>"><BR><BR>
                PREÇO......: <input type="text" name="txtpreco" value="<%out.print(p.getPreco());%>"><BR><BR>
            </div>
            
            <br>
            
            <div class="button">
                <input type="submit" name="op" value="EFETIVAR ATUALIZAÇÃO">
            </div>
        </form>
        <%} else {%>
        <h2>Produto não encontrado.</h2>
        <%}%>
    </body>
</html>
