<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/15
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>教工信息录入查询</title>
</head>
<body>

<form action="" method="post">
    教工姓名：<input type="text" name="name" />
    所在部门：<select>
    <%  String[] dept = { "信息工程学院", "机电工程学院", "建测学院", "资环学院", "理学院" };

        for(int i=0;i<dept.length;i++){
        %><option><%=dept[i]%></option><%
        }
    %>
</select>
</form>

</body>
</html>
