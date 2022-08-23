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
                padding:2px;
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

                    <div class="line1" >Time Sheet</div><br/> <hr><br/>

                    <div class = "line2" action="search" method="POST">

                        Employee Name: <input type="text" name="name"/> 
                        <input type="submit" value="Search" style="font-family: var; background-color: bisque;" />
                        &emsp;
                        Position: <input type="text" name="pos"/> 
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
                        <td rowspan="3"><strong>Late</strong></td>
                        <td rowspan="3"><strong>Permission</strong></td>
                        <td rowspan="3"><strong>Absent</strong></td>
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


                    <!-- lấy tên, vị trí nhân viên-->
                    <c:forEach items="${requestScope.emps}" var="e">
                        <tr style="font-family:courier;">
                            <td>No.${e.eid}</td>
                            <td>${e.ename}</td>
                            <td>${e.position}</td>

                            <!--lấy số ngày công-->
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

                            <!--số ngày có mặt-->
                            <c:if test="${e.eid eq 1 }">
                                <td>
                                    ${requestScope.count1}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 2 }">
                                <td>
                                    ${requestScope.count2}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 3 }">
                                <td>
                                    ${requestScope.count3}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 4 }">
                                <td>
                                    ${requestScope.count4}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 5 }">
                                <td>
                                    ${requestScope.count5}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 6 }">
                                <td>
                                    ${requestScope.count6}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 7 }">
                                <td>
                                    ${requestScope.count7}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 8 }">
                                <td>
                                    ${requestScope.count8}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 9 }">
                                <td>
                                    ${requestScope.count9}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 10 }">
                                <td>
                                    ${requestScope.count1}
                                </td> 
                            </c:if>


                            <!--số ngày đi muộn--> 
                            <c:if test="${e.eid eq 1 }">
                                <td>
                                    ${requestScope.countm1}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 2 }">
                                <td>
                                    ${requestScope.countm2}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 3 }">
                                <td>
                                    ${requestScope.countm3}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 4 }">
                                <td>
                                    ${requestScope.countm4}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 5 }">
                                <td>
                                    ${requestScope.countm5}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 6 }">
                                <td>
                                    ${requestScope.countm6}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 7 }">
                                <td>
                                    ${requestScope.countm7}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 8 }">
                                <td>
                                    ${requestScope.countm8}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 9 }">
                                <td>
                                    ${requestScope.countm9}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 10 }">
                                <td>
                                    ${requestScope.countm10}
                                </td> 
                            </c:if>




                            <!--số ngày nghỉ không phép-->
                            <c:if test="${e.eid eq 1 }">
                                <td>
                                    ${requestScope.countk1}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 2 }">
                                <td>
                                    ${requestScope.countk2}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 3 }">
                                <td>
                                    ${requestScope.countk3}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 4 }">
                                <td>
                                    ${requestScope.countk4}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 5 }">
                                <td>
                                    ${requestScope.countk5}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 6 }">
                                <td>
                                    ${requestScope.countk6}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 7 }">
                                <td>
                                    ${requestScope.countk7}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 8 }">
                                <td>
                                    ${requestScope.countk8}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 9 }">
                                <td>
                                    ${requestScope.countk9}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 10 }">
                                <td>
                                    ${requestScope.countk10}
                                </td> 
                            </c:if>



                            <!--số ngày nghỉ có phép-->
                            <c:if test="${e.eid eq 1 }">
                                <td>
                                    ${requestScope.countp1}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 2 }">
                                <td>
                                    ${requestScope.countp2}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 3 }">
                                <td>
                                    ${requestScope.countp3}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 4 }">
                                <td>
                                    ${requestScope.countp4}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 5 }">
                                <td>
                                    ${requestScope.countp5}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 6 }">
                                <td>
                                    ${requestScope.countp6}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 7 }">
                                <td>
                                    ${requestScope.countp7}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 8 }">
                                <td>
                                    ${requestScope.countp8}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 9 }">
                                <td>
                                    ${requestScope.countp9}
                                </td> 
                            </c:if>

                            <c:if test="${e.eid eq 10 }">
                                <td>
                                    ${requestScope.countp10}
                                </td> 
                            </c:if>


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

                <br/>
                <br/>
                <br/>
                
                
                
                
                <table style=" padding-left: 362px;">
                    <td colspan="3" style="font-size: 12px; text-align: left; ">
                        <div style="font-family:courier;">c : present</div>
                        <div style="font-family:courier;">k : absent</div>
                        <div style="font-family:courier;">m : late for work</div>
                        <div style="font-family:courier;">p : absent but with permission</div>

                    </td>

                </table>

            </div>

        </form>
    </body>

</html>
