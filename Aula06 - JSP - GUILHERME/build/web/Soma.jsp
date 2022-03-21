<%-- 
    Document   : Soma
    Created on : 21 de mar. de 2022, 14:28:58
    Author     : Fatec
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    boolean hasParameters = request.getParameter("soma")!=null;
    String errorMessage = null;
    double N1=0, N2=0, soma=0;
 try{
        if(hasParameters){
           String p1 = request.getParameter("N1");
           N1 = Double.parseDouble(p1);
           String p2 = request.getParameter("N2");
           N2 = Double.parseDouble(p2);
           soma = N1+N2;
        }        
 }catch(Exception err){
   errorMessage = err.getMessage();
 }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma - JSP Page</title>
    </head>
    <body>
        <h4><a href="index.jsp" >Voltar</a></h4>
        <h1>SOMA - JavaEE</h1>
        <h2>Java server pages</h2>
        <h3>SOMA</h3>
        <% if(errorMessage != null){%>
        <h4 style="color:red "> <%= errorMessage%></h4>
        <%} else if (hasParameters){%>
        <h4><%= N1 %> + <%= N2 %> = <u><%= soma %></h4>
        <hr/>
          <form action="Soma.jsp">
            <input type="number" name="N1" value="<%= N1 %>"/>+
            <input type="number" name="N2" value="<%= N2 %>"/>   
            <input type="submit" name="soma" value="="/>
        </form>
            <%}%>
    </body>
</html>
