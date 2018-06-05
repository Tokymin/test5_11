<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/15
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="product" class="toky.geek.bean.Product" scope="request" />
<html>
<head>
    <title>结算中心</title>
</head>
<body>
<%  request.setCharacterEncoding("utf-8");%>
<jsp:setProperty name="product" property="name" param="name" />
<jsp:setProperty name="product" property="number" param="number"/>5
商品名称：<jsp:getProperty name="product" property="name"/><br>
总金额：<jsp:getProperty name="product" property="total"/>

</body>
</html>
