<%-- 
    Document   : salary
    Created on : Aug 18, 2022, 7:40:03 PM
    Author     : Viet Duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <style>
        table{
            width: 100%;
            text-align: center;
            border:1px;
            border-collapse: collapse;
        }

        td{
            padding:12px;
            border:1px solid beige;
        }

        tr{

        }

        .Sunday {
            background-color: lightgrey;
        }

        .month{
            width: 100%;
        }

        .TimeSheet{
            text-align: center;
            color: red;
        }

        .name{
            padding: 40px;
            display: block;
        }




    </style>


</head>

<html>
    <body>

        <table>


            <div class="name">

                Name: <input type="text" name="name" />
                <input type="submit" value="Search" /> 

            </div>


            <br/>


            <h1 class="TimeSheet">Salary</h1><br/>

            <tr>
                <td>No.</td>
                <td>Name</td>
                <td>Position</td>
                <td>Basic Salary</td>
                <td>WorkDay</td>
                <td>Earning</td>
                <td>Bonus</td>
                <td>Total</td>
            </tr>

            <tr>
                <td>No.1</td>
                <td>Le Viet Duc</td>
                <td>Manager</td>
                <td>1500$</td>
                <td>30</td>
                <td>1500$</td>
                <td>100$</td>
                <td>1600$</td>
            </tr>

            <tr>
                <td>No.2</td>
                <td>Phung Viet Khoi</td>
                <td>Employee</td>
                <td>900$</td>
                <td>29</td>
                <td>870$</td>
                <td>50$</td>
                <td>920$</td>
            </tr>

            <tr>
                <td>No.3</td>
                <td>Luu Minh Huong</td>
                <td>Employee</td>
                <td>1200$</td>
                <td>29</td>
                <td>1160$</td>
                <td>150$</td>
                <td>1210$</td>
            </tr>

            <tr>
                <td>No.4</td>
                <td>Lai The Dat</td>
                <td>Security</td>
                <td>500$</td>
                <td>30</td>
                <td>500$</td>
                <td>50$</td>
                <td>550$</td>
            </tr>
            
            <tr>
                <td>No.5</td>
                <td>Duong Thu Hang</td>
                <td>Security</td>
                <td>300$</td>
                <td>30</td>
                <td>300$</td>
                <td>50$</td>
                <td>350$</td>
            </tr>



        </table>


    </body>


</html>

