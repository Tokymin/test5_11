<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/5/15
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>

<%@ page import="java.util.*" %>
<%@ page import="toky.geek.bean.Book" %>
<%@ page import="java.sql.*" %>


<%--<jsp:useBean id="book" class="toky.geek.bean.Book" scope="request">--%>

<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String strSQL = "";
    try {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        conn = DriverManager.getConnection("jdbc:odbc:root,ilyw5730wm.");
        stmt = conn.createStatement();
        strSQL = "select * from book";
        rs = stmt.executeQuery(strSQL);
        List list = new ArrayList<>();
        while (rs.next()) {
            Book book = new Book();
            book.setId(rs.getInt("id"));
            book.setName(rs.getString("name"));
            book.setPrice(rs.getDouble("price"));
            book.setBookCount(rs.getInt("bookCount"));
            book.setAuthor(rs.getString("author"));
            list.add(book);
        }
        request.setAttribute("list", list);
        rs.close();
        stmt.close();
        conn.close();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    request.getRequestDispatcher("viewData.jsp").forward(request, response);

%>


