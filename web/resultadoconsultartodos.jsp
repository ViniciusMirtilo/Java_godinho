<%-- 
    Document   : resultadoconsultartodos
    Created on : 22/05/2023, 10:40:19
    Author     : PTOLEDO
--%>

<%@page import="java.util.List"%>
<%@page import="model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Geologica:wght@300&display=swap" rel="stylesheet">
        <title>Resultado Consultar Todos</title>
        
        
        <style>
            body{
                font-family: 'Geologica', sans-serif;
            }
            h1{
                color: #C8AA6E;
                font-size: 30px;
            }
            table,th{
                background-color: #0AC8B9;
                border-radius: 15px;
                border: 2px solid black;
                padding-bottom: 10px;
            }
            td {
                padding-left: 20px;
                padding-right: 20px;
            }
            .return a{
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
        <div class="return"><a class="volta" href="/WebApplication1/index.html">Volta</a></div>
        <h1>Todos os Produtos</h1>
        <%
            List<Produto> lprod = (List<Produto>) request.getAttribute("lprod");
        %>


        <table border="1">
            <tr>
                <div class="text1">
                    <th>ID</th>
                    <th>Name</th>
                    <th>Preco</th>
                    <th>Descrição</th>
                </div>
            </tr>

            <%for (Produto p : lprod) {%>
            <tr>                
                <td><%out.print(p.getId());%></td>
                <td><%out.print(p.getName());%></td>
                <td><%out.print(p.getPreco());%></td>
                <td><%out.print(p.getDescricao());%></td>
                <td align="center"><a href="http://localhost:8084/WebApplication1/Controle_Produto?op=DELETAR&txtid=<%out.print(p.getId());%>"><img src="images/lixeira01.png" width="25" height="25"></a></td>
                <td align="center"><a href="http://localhost:8084/WebApplication1/Controle_Produto?txtid=<%out.print(p.getId());%>&txtname=<%out.print(p.getName());%>&op=ATUALIZAR" ><img src="images/editar01.png" width="25" height="25"></a></td>
            </tr>
            <%}%>

        </table>
    </body>
</html>
