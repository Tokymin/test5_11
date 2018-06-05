<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/13
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="car" class="toky.geek.bean.Car" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:setProperty property="*" name="car"/>
<table border="1">
    <tr><th>汽车牌号</th>
        <th>汽车名称</th>
        <th>汽车生产日期</th>
    </tr>
    <tr>
        <td><jsp:getProperty property="number" name="car"/></td>
        <td><jsp:getProperty property="name" name="car"/></td>
        <td><jsp:getProperty property="madeTime" name="car"/></td>
    </tr>
</table>
</body>
</html>
