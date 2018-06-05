<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/15
  Time: 8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="tixing" class="toky.geek.bean.Trapezium" scope="request"/>
<html>
<head>
    <title>这是计算梯形面积结果</title>
</head>
<body>

    梯形的上底是：<jsp:getProperty name="tixing" property="shangdi"/><br>
    梯形的下底是：<jsp:getProperty name="tixing" property="xiadi" /><br>
    梯形的高是：<jsp:getProperty name="tixing" property="gao"/><br>
    梯形的面积是： <jsp:getProperty name="tixing" property="squrare"/><br>
    </body>
</html>
