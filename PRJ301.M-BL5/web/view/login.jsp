<%-- 
    Document   : login
    Created on : Aug 11, 2022, 11:22:53 PM
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
        <form action="login" method="POST">
            username <input type="text" name="username" value="" /><br/><!-- comment -->
            password <input type="text" name="password" value="" /><br/><!-- comment -->
            <input type="submit" value="login" name="login" />
            
            
        </form>
    </body>
</html>
