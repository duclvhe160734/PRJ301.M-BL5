<%-- 
    Document   : salary
    Created on : Aug 18, 2022, 7:40:03 PM
    Author     : Viet Duc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <style>

            .fullscreen{
                width:100%;
            }

            .table{
                width: 100%;
                text-align: center;
                border:1px;
                border-collapse: collapse;
            }

            td{
                padding:1px;
                border:1px solid beige;
            }

            .TimeSheet{
                text-align: center;
                color: red;
                font-size:300%;
            }

        </style>


    </head>

    <body>
        <div class = fullscreen>
            <table class="table">
                <h1 class="TimeSheet">Salary Sheet</h1>


                <tr style="font-family:courier;">
                    <td><b>No.</b></td>
                    <td><b>Name</b></td>
                    <td><b>Position</b></td>
                    <td><b>Basic Salary</b></td>    
                    <td><b>Total Workday</b></td>
                    <td><b>Bonus</b></td>
                    <td><b>Deductions</b></td>
                    <td><b>Net Salary</b></td>
                </tr>

                <c:forEach items="${requestScope.emps}" var="e">

                    <tr style="font-family:courier;">
                        <td><b>No.${e.eid}</b></td>
                        <td><b>${e.ename}</b></td>
                        <td><b>${e.position}</b></td>
                        <td><b>${e.salary.salary}</b></td>    
                        <td><b>Total Workday</b></td>
                        <td><b>${e.salary.bonus}</b></td>
                        <td><b>${e.salary.deduction}</b></td>
                        <td><b>Net Salary</b></td>
                    </tr>


                </c:forEach>



            </table>
        </div>
    </body>

</html>

