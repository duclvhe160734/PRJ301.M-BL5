<%-- 
    Document   : TimeSheet
    Created on : Aug 18, 2022, 10:27:11 AM
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
                padding:5px;
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
        <form>
            <div class = fullscreen>
                <table class="table">
                    <h1 class="TimeSheet">Time Sheet</h1>




                    <tr>
                        <td rowspan="3"><strong>No.</strong></td>
                        <td rowspan="3"><strong>Name</strong></td>
                        <td rowspan="3"><strong>Position</strong></td>
                        <td colspan="31" style="font-family:courier;"> [<]        Days in /Month/         [>]</td>
                        <td rowspan="3"><strong>Total WorkDay</strong></td>
                        <td rowspan="3"><strong>Note</strong></td>
                    </tr>

                    <tr style="font-family:courier;">
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>6</td>
                        <td>7</td>
                        <td>8</td>
                        <td>9</td>
                        <td>10</td>
                        <td>11</td>
                        <td>12</td>
                        <td>13</td>
                        <td>14</td>
                        <td>15</td>
                        <td>16</td>
                        <td>17</td>
                        <td>18</td>
                        <td>19</td>
                        <td>20</td>
                        <td>21</td>
                        <td>22</td>
                        <td>23</td>
                        <td>24</td>
                        <td>25</td>
                        <td>26</td>
                        <td>27</td>
                        <td>28</td>
                        <td>29</td>
                        <td>30</td>
                        <td>31</td>
                    </tr>

                    <tr style="font-family:courier;">
                        <td>Mo</td>
                        <td>Tu</td>
                        <td>We</td>
                        <td>Th</td>
                        <td>Fr</td>
                        <td>Sa</td>
                        <td>Su</td>
                        <td>Mo</td>
                        <td>Tu</td>
                        <td>We</td>
                        <td>Th</td>
                        <td>Fr</td>
                        <td>Sa</td>
                        <td>Su</td>
                        <td>Mo</td>
                        <td>Tu</td>
                        <td>We</td>
                        <td>Th</td>
                        <td>Fr</td>
                        <td>Sa</td>
                        <td>Su</td>
                        <td>Mo</td>
                        <td>Tu</td>
                        <td>We</td>
                        <td>Th</td>
                        <td>Fr</td>
                        <td>Sa</td>
                        <td>Su</td>
                        <td>Mo</td>
                        <td>Tu</td>
                        <td>We</td>
                    </tr>

                    <c:forEach items="${requestScope.emps}" var="e">
                        <tr style="font-family:courier;">
                            <td>No.${e.eid}</td>
                            <td>${e.ename}</td>
                            <td>${e.position}</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>0.5</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>0.5</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>total</td>
                            <td></td>
                        </tr>
                    </c:forEach>



                </table>
            </div>

        </form>
    </body>

</html>
