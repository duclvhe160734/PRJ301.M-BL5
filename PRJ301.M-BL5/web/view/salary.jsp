<%-- 
    Document   : salary
    Created on : Aug 18, 2022, 7:40:03 PM
    Author     : Viet Duc
--%>

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

                    <tr>
                        <td><b>No.</b></td>
                        <td><b>Name</b></td>
                        <td><b>Position</b></td>
                        <td><b>Basic Salary</b></td>    
                        <td><b>Allowances</b></td>
                        <td><b>Total Earnings</b></td>
                        <td><b>Total Workday</b></td>
                        <td><b>Total Gross Salary</b></td>
                        <td><b>Deductions</b></td>
                        <td><b>Tax</b></td>
                        <td><b>Advance Salary</b></td>
                        <td><b>Net Salary</b></td>
                    </tr>
                    
                    

                    <tr style="font-family:courier;">
                        <td>No.1</td>
                        <td>Le Viet Duc</td>
                        <td>Manager</td>
                        <td>2000</td>
                        <td>50</td>
                        <td>50</td>
                        <td>100</td>
                        <td>200</td>
                        <td>2500</td>
                        <td>25</td>
                        <td>2500</td>
                        <td>1000</td>
                        <td>80</td>
                      
                        
                    </tr>

                </table>
            </div>
        </body>

    </html>

