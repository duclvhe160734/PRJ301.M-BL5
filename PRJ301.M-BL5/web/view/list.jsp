<%-- 
    Document   : list
    Created on : Aug 11, 2022, 11:24:56 PM
    Author     : Viet Duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${requestScope.requests}" var="r">
            <div> ${r.id} <br/>
                    ${r.content} <br/>
                    ${r.from} <br/>
                    ${r.to} <br/>
                    ${r.createdby.username}
            </div>
        </c:forEach>
    </body>
</html>
