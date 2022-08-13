<%-- 
    Document   : login
    Created on : Aug 12, 2022, 8:41:27 PM
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
            <div style="width:300px; margin: auto;">
            <h1>Login</h1>

            <div class='row'>

                <div class='label'>Username</div>
                <div class='input'><input type='text' name='username' placeholder='Your username'></div>

            </div><br/>

            <div class='row'>

                <div class='label'>Password</div>
                <div class='input'><input type='password' id='login-password' name='password' placeholder='Your password'></div>

            </div><br/>
            
            
            <input type="submit" value="Login" /> <br/> <br/>
            <a href="#">Forget password?</a>
            
            <a href="home">Home</a>
            
            </div>
        </form>
    </body>
</html>
