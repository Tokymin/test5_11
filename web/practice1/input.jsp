<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/15
  Time: 8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>输入梯形面积</title>
</head>
<body>
<div class="tixing">
<h2>请输入梯形参数</h2>
<form action="${pageContext.request.contextPath}/Servlet" method="post">

    上底：<input type="text" name="shangdi"/>
    下底：<input type="text" name="xiadi"/>
    高:<input type="text" name="gao"/>
    <input type="submit" value="提交"/>
</form>
    <%--<jsp:setProperty name="tixing" property="shangdi" param="shangdi"/>--%>
    <%--<jsp:setProperty name="tixing" property="xiadi" param="xiadi"/>--%>
    <%--<jsp:setProperty name="tixing" property="gao" param="gao"/>--%>
</div>
</body>
</html>
