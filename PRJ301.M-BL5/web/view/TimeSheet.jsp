<%-- 
    Document   : TimeSheet
    Created on : Aug 18, 2022, 10:27:11 AM
    Author     : Viet Duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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
                padding-left: 40px;
                display: block;
            }

            .date{
                padding-left: 110px;
                padding-top: 40px;
                padding-bottom: 0px;
            }


        </style>


    </head>

    <html>
        <body>

            <table>
                
                <div class="date"><input type="date" name="name"> </div>

                
                <br/><br/><br/>

                <div class="name">
                    Name: <input type="text" name="name" />
                    <input type="submit" value="Search" /> 
                </div>
                <br/>
                <h1 class="TimeSheet">Time Sheet</h1>

                <tr>
                    <td class="Sunday">Sunday</td>
                    <td>Monday</td>
                    <td>Tuesday</td>
                    <td>Wednesday</td>
                    <td>Friday</td>
                    <td>Saturday</td>
                    <td>Sunday</td>
                </tr>

                <tr>
                    <td class="Sunday">31</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                    <td>5</td>
                    <td>6</td>
                </tr>

                <tr>
                    <td class="Sunday">7</td>
                    <td>8</td>
                    <td>9</td>
                    <td>10</td>
                    <td>11</td>
                    <td>12</td>
                    <td>13</td>
                </tr>            

                <tr>
                    <td class="Sunday">14</td>
                    <td>15</td>
                    <td>16</td>
                    <td>17</td>
                    <td>18</td>
                    <td>19</td>
                    <td>20</td>
                </tr>

                <tr>
                    <td class="Sunday">21</td>
                    <td>22</td>
                    <td>23</td>
                    <td>24</td>
                    <td>25</td> 
                    <td>26</td>
                    <td>27</td>
                </tr>

                <tr>
                    <td class="Sunday">28</td>
                    <td>29</td>
                    <td>30</td>
                    <td>31</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                </tr>

            </table>


        </body>


    </html>
