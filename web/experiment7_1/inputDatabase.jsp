<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/31
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="recordBean" class="toky.geek.bean.Bean7_1" scope="session"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/shiyan1Servlet" method=post>
    <b>数据库：<input type="text" name="dataBase" size=20 ></b>
    <br>表名：<input type="text" name="tablename" size=23 >
    <br>用户名：<input type="text" name="user" size=20 >
    <br>用户密码：<input type="password"   name="password" size=17.5>
    <br><input type="submit" name="b" value="提交">
</form>
<table border=1>
    <%	String[][]table =recordBean.getTablerecord();
        if(table==null){
            out.print("没有记录");
            return;
        }
        String[]colname=recordBean.getColname();
        if(colname!=null){
            out.print("<tr>");
            for(int i=0;i<colname.length;i++){
                out.print("<th>"+colname[i]+"</th>");
            }
            out.print("<tr>");
        }
        out.println("全部记录数"+table.length);
        for(int i=0;i<table.length;i++){
            out.print("<tr>");
            for(int j=0;j<colname.length;j++){
                out.print("<td>"+table[i][j]+"</td>");
            }
            out.print("</tr>");
        }
    %>
</table>

</body>
</html>
