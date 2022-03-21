<%-- 
    Document   : index
    Created on : 21 de mar. de 2022, 13:44:17
    Author     : Fatec
--%>

<!--

  COMENTARIO HTML

-->

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data/Hora - JAVAEE JSP</title>
    </head>
    <body>
         <%Date agora = new Date();%>
         <h4><a href="index.jsp" >Voltar</a></h4>
        <h1>Data/Hora - JavaEE</h1>
        <h2>Java server pages</h2>
        <h3 style="color:red">- Inicio</h3>
        <hr/>
        <h4>Mostrando server date com scriptlet</h4>

        <div> 
            <% 
                out.print(agora);
            %>
        <hr/>
        </div>
            
        <h4>Mostrando server date com expression</h4>    
        <div><%= agora %> </div>
        <hr/>
    </body>
</html>
