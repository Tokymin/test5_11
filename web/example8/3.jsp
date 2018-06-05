<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/29
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor=#EEFFAD><font Size=2>
    <%
        String name="jsp";
        String webDir = request.getContextPath();
        webDir = webDir.substring(1);
        File f= new File("");
        String path = f.getAbsolutePath();
        int index = path.indexOf("bin");
        String tomcatDir = path.substring(0,index);//tomcat的安装目录
        File dir=new File(tomcatDir+"/webapps/"+webDir);
    %>
    <br> 在<%=dir%>下<%=name%>文件：
    <%
        FileJSP file_jsp=new FileJSP(name);
        String file_name[]=dir.list(file_jsp);
        for(int i=0;i<file_name.length;i++)
            out.print("<br>"+file_name[i]);
    %>
</font></body>
</html>
