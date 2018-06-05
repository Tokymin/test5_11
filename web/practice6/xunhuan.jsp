<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/15
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>

<%--给定一个字符串数组classes={{"计算机13级1班","班长为张亮","学习委员为李克"},{"计算机13级2班","班长为罗科","学习委员为黄程发"}}，在JSP页面中编写一个for循环或While循环从该数组中取值并输出到前台。--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String[][] classes = {{"计算机13级1班", "班长为张亮", "学习委员为李克"},
            {"计算机13级2班", "班长为罗科", "学习委员为黄程发"}};
    for (int i = 0; i < classes.length; i++) {
        for (int j = 0; j < classes[i].length; j++) {
            %><br><%=classes[i][j]%><%
        }
    }
%>
</body>
</html>
