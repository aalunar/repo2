<%-- 
    Document   : thanhviens
    Created on : 26/12/2014, 09:07:06 PM
    Author     : Alejandro.Luna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>User list!</h1>
        
        <table>
            <tr>
                <th>id</th><th>User name</th><th>Password</th>
            </tr>
            
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>
                        <c:out value="${user.getId()}"></c:out>
                    </td>
                    <td>
                        <c:out value="${user.getTenDn()}"></c:out>
                    </td>
                    <td>
                        <c:out value="${user.getMathKhau()}"></c:out>
                    </td>
                </tr>
            </c:forEach>
    </body>
</html>
