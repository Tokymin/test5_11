<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/13
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<jsp:useBean id="car" class="toky.geek.bean.Car" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#7fffd4">
<font size="2">
    <form action="" method="post">
        �����ƺţ�<input type="text" name="number">
        <br>�������ƣ�<input type="text" name="name">
        <br>�����������ڣ�<input type="text" name="madeTime">
        <input type="submit" value="�ύ">
    </form>
    <jsp:setProperty property="*" name="car"/>
    <table border="1">
        <tr><th>�����ƺ�</th>
            <th>��������</th>
            <th>������������</th>
        </tr>
        <tr>
            <td><jsp:getProperty property="number" name="car"/>
            <td><jsp:getProperty property="name" name="car"/></td>
            <td><jsp:getProperty property="madeTime" name="car"/></td>
        </tr>
    </table>
</font>

</body>
</html>
