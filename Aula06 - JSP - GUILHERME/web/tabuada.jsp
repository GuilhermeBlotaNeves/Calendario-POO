<%-- 
    Document   : Soma
    Created on : 21 de mar. de 2022, 14:28:58
    Author     : Fatec
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
    boolean hasParameters = request.getParameter("gerar")!=null;
    String errorMessage = null;
    int n=0;
 try{
        if(hasParameters){
           String p = request.getParameter("n");
           n = Integer.parseInt(p);      
        }        
 }catch(Exception err){
   errorMessage = err.getMessage();
 }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabuada - JSP Page</title>
    </head>
    <body>
        <h4><a href="index.jsp" >Voltar</a></h4>
        <h1>Tabuada - JavaEE</h1>
        <h2>Java server pages</h2>
        <h3>Tabuada</h3>
        <hr/>
        <form action="tabuada.jsp">        
            <input type="number" name="n" value="<%= n %>"/>   
            <input type="submit" name="gerar" value="Gerar"/>
        </form>
         <% if(errorMessage != null){%>
        <h4 style="color:red "> <%= errorMessage%></h4>
        <%}else if(hasParameters){%>
      <hr/>  
      <table>
          
          <%for(int i=1; i<=10; i++){%>        
          <tr>
              <td><%= n %></td>
              <td>x</td>
              <td><%= i %></td>
              <td>=</td>
              <td><%= i*n %></td>
          </tr>
        <%}%>        
      </table>
    <%}%>
    </body>
</html>
