<%@page import="java.util.ArrayList" %>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   
    </head>
    <body>
        
        <%
            if (session.getAttribute("listaper") == null){
                ArrayList<Persona> lista = new ArrayList<Persona>();
            //agregamos lista a la coleccion
            lista.add(new Persona(1,"Freddy Condori","78969171","fredy@hotmail.com"));
            lista.add(new Persona(2,"juan angel mamani","7896565","j.m.v@hotmail.com"));
            lista.add(new Persona(3,"rodrigo ","656569171","jhosn@hotmail.com"));
            // colocamos la lista como un atributo de session
            session.setAttribute("listaper", lista);
            }
        %>
            <h1>Ejemplos de JSTL Core</h1>
             <h1>NOMBRE:ALVARO ROJAS ILARI</h1>
            <ul> 
            <li><a href="jstl_if.jsp">Ejemplo del if</a></li> 
            <li><a href="jstl_choose.jsp">probando el choose</a></li> 
            <li><a href="jstl_foreach.jsp">Recordando la coleccion con forEach</a></li> 
            </ul>
    </body>
</html>
