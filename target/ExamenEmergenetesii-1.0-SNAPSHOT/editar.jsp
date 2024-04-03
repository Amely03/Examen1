<%@page import="com.emergentes.modelo.Nota"%>
<%
    Nota reg = (Nota)request.getAttribute("misession");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <div style="text-align:center;">
            <table border="1" style="margin: 0 auto;">         
                <tr>
                    <th><br>PRIMER PARCIAL TEM-742</br>
                        <br>NOMBRE: KAREN MELODY TAPIA RAMOS</br>                               
                        <br>CARNET: 13733064 LP.</br></th>

                </tr>
            </table>
        </div>
        <style>
            tbody{
                color:purple;
            }
        </style>
        
        <h1 align="center">REGISTRO DE CALIFICACIONES
        </h1>
        <form action=""MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%=reg.getId()%>" size="2" readonly></td>             
                </tr>
                <tr>
                    <td>Nombre del estudiante</td>
                    <td><input type="text" name="nombre" value="<%=reg.getNombre() %>"></td>
                </tr>
                <tr>
                    <td>Primer parcial (sobre 30 pnts)</td>
                    <td><input type="text" name="p1" value="<%=reg.getP1() %>"></td>
                </tr>
                <tr>
                    <td>Segundo parcial (sobre 30 pnts)</td>
                    <td><input type="text" name="p2" value="<%=reg.getP2() %>"></td>
                </tr>
                <tr>
                    <td>Examen final(sobre 40 pnts)</td>
                    <td><input type="text" name="ef" value="<%=reg.getEf() %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
