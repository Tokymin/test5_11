<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/29
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor=#EEFFAD><font Size=2>
    <%
        String webDir = request.getContextPath();//获取当前Web服务目录的名称
        webDir = webDir.substring(1); //去掉名称前面的目录符号：/
        File f= new File(""); //该文件认为在Tomcat引擎启动的目录中，即bin目录中
        String path = f.getAbsolutePath();
        int index = path.indexOf("bin");
        String tomcatDir = path.substring(0,index);//tomcat的安装目录
        File dir=new File(tomcatDir+"/webapps/"+webDir+"/image");
    %>
    <br> 在<%=webDir%>下创建一个新的目录：image,<br>成功创建了吗？
    <%=dir.mkdir()%>
    <br> image是目录吗？<%=dir.isDirectory()%>
</font></body>
</html>
