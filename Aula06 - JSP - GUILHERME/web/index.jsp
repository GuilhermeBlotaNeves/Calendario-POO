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
        <title>Index - JAVAEE JSP</title>
    </head>
    <body>
        
        <h1>JavaEE</h1>
        <h2>Java server pages</h2>
        <h3>-Inicio</h3>
        <h1>Guilherme Blota Neves</h1>
        <h2>Ra:1290482022010</h2>
        <hr/>
        <h4>
            <a href="DataHora.jsp">Data/Hora do servidor</a>
        </h4>
        
        <h4>Soma</h4>
        
        <form action="Soma.jsp">
            <input type="number" name="N1"/>+
            <input type="number" name="N2"/>   
            <input type="submit" name="soma" value="="/>
        </form>
        
        <h4>Numeros aleatorios</h4>
        <form action="Numeros aleatorios.jsp">        
            <input type="number" name="n"/>   
            <input type="submit" name="gerar" value="Gerar"/>
        </form>
        
        <h4>Tabuada</h4>
        <form action="tabuada.jsp">        
            <input type="number" name="n"/>   
            <input type="submit" name="gerar" value="Gerar"/>
        </form>
        
        <h3>Selecionar novo mês e ano</h3>
            
            <form action="calendario.jsp" method="post">
                <p>Entre com o novo mes: <input type="number" min="1" max="12" name="entradaMes" /></p>
                <p>Entre com o novo ano: <input type="number" min="0" name="entradaAno"/></p>
                <p><input type="submit" value="Gerar Novo Calendario"/></p> 
        
</html>
