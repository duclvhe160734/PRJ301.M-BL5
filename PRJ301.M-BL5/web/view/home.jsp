<%-- 
    Document   : home
    Created on : Aug 12, 2022, 8:50:19 PM
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
        <form action="home" method="POST">
            <h2>Check-in</h2>
            <input type="submit" value="Check-in" name="Check-in" /> <br/>
            <h2>Work Sheet</h2>
            <input type="submit" value="Work Sheet" name="Work Sheet" /> <br/>
            <h2>Request</h2>
            <input type="submit" value="Request" name="Request" /> <br/>
            <h2>Time-off</h2>
            <input type="submit" value="Time-off" name="Time-off" />
        </form>
    </body>
</html>
