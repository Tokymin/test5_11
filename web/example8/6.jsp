<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/29
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="fileBean" class="toky.geek.bean.Example8_6_Bean" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<P>选择要上传的文件：<BR>
<form action="${pageContext.request.contextPath}/Example8_6_Servlet" method="post" ENCTYPE="multipart/form-data">
    <input type=FILE name="boy" size="45">
    <br> <input type="submit" name ="boy" value="提交">
</form>
<br> 上传的文件名字：
<jsp:getProperty name="fileBean" property="fileName"/>
<br> 上传反馈：
<jsp:getProperty name="fileBean" property="mess"/>
<%
    String name=fileBean.getFileName();
    boolean boo =name.endsWith(".jpg");
    boo = boo||name.endsWith(".gif");
    if(boo) {
%>     <image src = "image/<%=name%>" width=200 height =200><%=name %></image>
<% }
else {
%>     <%=name %>
<% }
%>
</body>
</html>
