<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/15
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<jsp:useBean id="product" class="toky.geek.bean.Product" scope="request"/>
<html>
<head>
    <title>������Ʒ</title>
</head>
<body>
<form action="purchase.jsp" method="post" accept-charset="UTF-8">
    ������Ʒ<br>����:<br>
    <input type="text" name="name"/><br>
    ����:<br>
    <input type="text" name="number"/><br>
    <input type="submit" value="�ύ"/>

    <jsp:setProperty name="product" property="name" param="name"/>
    <jsp:setProperty name="product" property="number" param="number"/>
</form>


</body>
</html>
