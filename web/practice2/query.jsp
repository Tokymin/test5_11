<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/11
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>这是显示查询的结果</title>
</head>
<body>
<%  request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    Connection connection;
    PreparedStatement statement;
    ResultSet resultSet;
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    try {
        connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1/practice5_11?user=root&password=ilyw5730wm.");
        String sql = "select * from student WHERE name='"+name+"'";
        statement = connection.prepareStatement(sql);
        resultSet = statement.executeQuery(sql);
        out.print("<table border=2>");
        out.print("<tr>");
        out.print("<th width=100>" + "姓名");
        out.print("<th width=100>" + "性别");
        out.print("<th width=100>" + "籍贯");
        out.print("</tr>");
        while(resultSet.next()){
            out.print("<tr>");
            out.print("<td>"+resultSet.getString(1)+"</td>");
            out.print("<td>"+resultSet.getString(2)+"</td>");
            out.print("<td>"+resultSet.getString(3)+"</td>");
            out.print("</tr>");
        }
        out.print("</table>");
        connection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
