<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/15
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%! int counter = 0;
    int counterFunction(){
        return counter++;
    }%>  <% counterFunction(); %>      网站计数器<br> 你是第<%=counter %>位访问者
</body>
</html>
