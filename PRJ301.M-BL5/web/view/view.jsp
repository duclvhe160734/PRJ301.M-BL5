<%-- 
    Document   : view
    Created on : Aug 22, 2022, 12:03:07 PM
    Author     : Viet Duc
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border = 1px>
            <tbody >
                <tr>
                    <td>eid</td>
                    <td>name</td>
                    <td>position</td>
                </tr>
                <c:forEach items="${requestScope.stus}" var="s">
                    <tr>
                        <td>${s.eid}</td>
                        <td>${s.ename}</td>
                        <td>${s.position}</td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
