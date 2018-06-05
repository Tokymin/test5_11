package toky.geek.bean.servlet;

import toky.geek.bean.Bean7_1;
import java.io.*;
import java.sql.*;
import javax.servlet.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/shiyan1Servlet")
public class Shiyan1_Servlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String dataBase = req.getParameter("dataBase");
        String tablename = req.getParameter("tablename");
        String user = req.getParameter("user");
        String password = req.getParameter("password");
        boolean boo = (dataBase == null || dataBase.length() == 0);
        boo = boo || (tablename == null || tablename.length() == 0);
        boo = boo || (user == null || user.length() == 0);
        if (boo) {
            fail(req,resp,"查询失败");
        }
        HttpSession session = req.getSession(true);
        Connection con = null;
        Bean7_1 recordBean = null;
        try {
            recordBean = (Bean7_1) session.getAttribute("recordBean");
            if (recordBean == null) {
                recordBean = new Bean7_1();        //创建javaBean对象
                session.setAttribute("recordBean", recordBean);
            }
        } catch (Exception exp) {
            recordBean = new Bean7_1();
            session.setAttribute("recordBean", recordBean);
        }
        System.out.println("step1");
        String uri = "jdbc:mysql://127.0.0.1/" + dataBase;
        System.out.println("step2");
        try {
            con = DriverManager.getConnection(uri, user, password);
            Statement sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = sql.executeQuery("SELECT * FROM " + tablename);
            ResultSetMetaData metaData = rs.getMetaData();
            System.out.println("step3");
            int columnCount = metaData.getColumnCount();            //得到结果集列数
            String[] colname = new String[columnCount];
            for (int i = 0; i < colname.length; i++) {
                colname[i] = metaData.getColumnName(i + 1);        //得到列名
            }
            System.out.println("step4");
            recordBean.setColname(colname);                        //更新javabean数据模型
            rs.last();
            int rowNumber = rs.getRow();                            //得到记录数
            String[][] tableRecord = recordBean.getTablerecord();
            tableRecord = new String[rowNumber][columnCount];
            rs.beforeFirst();
            int i = 0;
            while (rs.next()) {
                for (int k = 0; k < columnCount; k++)
                    tableRecord[i][k] = rs.getString(k + 1);
                i++;
            }
            recordBean.setTablerecord(tableRecord);                //更新javabean数据模型
            con.close();
            resp.sendRedirect("experiment7_1/inputDatabase.jsp");            //重定向
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
    public void fail(HttpServletRequest request,HttpServletResponse response,String backNews) {
        response.setContentType("text/html);charset=utf-8");
        try {
            PrintWriter out=response.getWriter();
            out.println("<html><body>");
            out.println("<h2>"+backNews+"</h2>");
            out.println("返回");
            out.println("<a href=inputDatabase.jsp>输入正确信息</a>");
            out.println("</body></html>");

        }
        catch(IOException exp) {}
    }

}
