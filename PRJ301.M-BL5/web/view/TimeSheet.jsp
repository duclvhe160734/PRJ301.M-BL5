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
                border-collapse: var;
            }

            td{
                padding:5px;
                border:1px solid darkgreen;
            }

            .line1{
                padding-left: 40px;
                color: indigo;
                font-size:300%;
                font-family: serif;
                background-color: #f1f1f1;
                border: 2px;
                border-color: red;
            }

            .line2{
                color: indigo;
            }

            .line3{
                margin-top: 10px;
                padding-top: 10px;
                background-size: 10px;
            }

        </style>


    </head>

    <body>
        <form>

            <div class = fullscreen>

                <table class="table">

                    <div class="line1" >- Time Sheet -</div><br/> <hr><br/>

                    <div class = "line2" action="search" method="POST">

                        Employee Name: <input type="text" name="name"/> 
                        <input type="submit" value="Search" style="font-family: var; background-color: bisque;" />

                    </div><br/><hr>


                    <tr class = "line3" style="background-color: cornsilk">
                        <td rowspan="3"><strong>No.</strong></td>
                        <td rowspan="3"><strong>Name</strong></td>
                        <td rowspan="3"><strong>Position</strong></td>
                        <td   style="background-color: antiquewhite" colspan="31" style="font-family:courier;">
                            Days in | August | 
                        </td>
                        <td rowspan="3"><strong>Worked Days</strong></td>
                        <td rowspan="3"><strong>Absent</strong></td>
                        <td rowspan="3"><strong>Permission</strong></td>
                        <td rowspan="3"><strong>Late</strong></td>
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
                        <td style="background-color: aqua">23</td>
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
                        <td style="background-color: aqua">Tu</td>
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

                            <c:if test="${e.eid eq 1 }">
                                <c:forEach items="${requestScope.aug1}" var="a">
                                    <td>
                                        ${a.status}
                                    </td> 
                                </c:forEach>

                            </c:if>

                            <c:if test="${e.eid eq 2 }">
                                <c:forEach items="${requestScope.aug2}" var="a">
                                    <td>
                                        ${a.status}
                                    </td> 
                                </c:forEach>

                            </c:if>

                            <c:if test="${e.eid eq 3 }">
                                <c:forEach items="${requestScope.aug3}" var="a">
                                    <td>
                                        ${a.status}
                                    </td> 
                                </c:forEach>

                            </c:if>

                            <c:if test="${e.eid eq 4 }">
                                <c:forEach items="${requestScope.aug4}" var="a">
                                    <td>
                                        ${a.status}
                                    </td> 
                                </c:forEach>

                            </c:if>

                            <c:if test="${e.eid eq 5 }">
                                <c:forEach items="${requestScope.aug5}" var="a">
                                    <td>
                                        ${a.status}
                                    </td> 
                                </c:forEach>

                            </c:if>

                            <c:if test="${e.eid eq 6 }">
                                <c:forEach items="${requestScope.aug6}" var="a">
                                    <td>
                                        ${a.status}
                                    </td> 
                                </c:forEach>

                            </c:if>

                            <c:if test="${e.eid eq 7 }">
                                <c:forEach items="${requestScope.aug7}" var="a">
                                    <td>
                                        ${a.status}
                                    </td> 
                                </c:forEach>

                            </c:if>

                            <c:if test="${e.eid eq 8 }">
                                <c:forEach items="${requestScope.aug8}" var="a">
                                    <td>
                                        ${a.status}
                                    </td> 
                                </c:forEach>

                            </c:if>

                            <c:if test="${e.eid eq 9 }">
                                <c:forEach items="${requestScope.aug9}" var="a">
                                    <td>
                                        ${a.status}
                                    </td> 
                                </c:forEach>

                            </c:if>

                            <c:if test="${e.eid eq 10 }">
                                <c:forEach items="${requestScope.aug10}" var="a">
                                    <td>
                                        ${a.status}
                                    </td> 
                                </c:forEach>

                            </c:if>


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
                            <td></td>
                            <td></td>

                        </tr>
                    </c:forEach>


                    <c:forEach items="${requestScope.stus}" var="s">
                        <tr>
                            <td>${s.eid}</td>
                            <td>${s.ename}</td>
                            <td>${s.position}</td>
                        </tr>
                    </c:forEach>


                </table>

            </div>

        </form>
    </body>

</html>
