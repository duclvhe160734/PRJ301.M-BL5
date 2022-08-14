<%-- 
    Document   : manager
    Created on : Aug 12, 2022, 9:04:45 PM
    Author     : Viet Duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <style type="text/css"> 
          * {
            box-sizing:border-box;
          }
          .container {
            width: 500px;
            margin: auto;
            font-weight: bold;
          }
          ul {
            list-style-type: none;
          }
          body {
            font-family: Verdana,sans-serif;
          }

          .month {
              padding: 70px 25px;
              width: 100%;
              background: #CC0000 ;
          }

          .month ul {
              margin: 0;
              padding: 0;
          }

          .month ul li {
              color: white;
              font-size: 20px;
              text-transform: uppercase;
              letter-spacing: 3px;
          }

          .month .prev {
              float: left;
              padding-top: 10px;
          }

          .month .next {
              float: right;
              padding-top: 10px;
          }

          .weekdays {
              margin: auto;
              padding: 10px 0;
              background-color: #ddd;
          }

          .weekdays li {
              display: inline-block;
              width: 13%;
              color: #666;
              text-align: center;
          }

          .days {
              margin: auto;
              padding: 10px 0;
              background: #eee;
              margin: 0;
          }

          .days li {
              list-style-type: none;
              display: inline-block;
              width: 13%;
              text-align: center;
              margin-bottom: 5px;
              font-size:12px;
              color: #777;
          }

          .days li .active {
              padding: 5px;
              background: #CC0000;
              color: white !important
          }
        </style>
    </head>
    <body> 
      <div class="container">

        <div class="month">      
          <ul>
            <li class="prev">&#10094;</li>
            <li class="next">&#10095;</li>
            <li style="text-align:center">
              Tháng 5<br>
              <span style="font-size:18px">2017</span>
            </li>
          </ul>
        </div>

        <ul class="weekdays">
          <li>Thứ 2</li>
          <li>Thứ 3</li>
          <li>Thứ 4</li>
          <li>Thứ 5</li>
          <li>Thứ 6</li>
          <li>Thứ 7</li>
          <li>CN</li>
        </ul>

        <ul class="days">  
          <li>1</li>
          <li>2</li>
          <li>3</li>
          <li>4</li>
          <li>5</li>
          <li>6</li>
          <li>7</li>
          <li>8</li>
          <li>9</li>
          <li>10</li>
          <li>11</li>
          <li>12</li>
          <li>13</li>
          <li>14</li>
          <li>15</li>
          <li>16</li>
          <li>17</li>
          <li>18</li>
          <li>19</li>
          <li>20</li>
          <li>21</li>
          <li>22</li>
          <li>23</li>
          <li><span class="active">24</span></li>
          <li>25</li>
          <li>26</li>
          <li>27</li>
          <li>28</li>
          <li>29</li>
          <li>30</li>
          <li>31</li>
        </ul>
      </div>
    </body>
</html>
