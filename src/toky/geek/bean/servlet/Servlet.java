package toky.geek.bean.servlet;

import toky.geek.bean.Trapezium;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
//    @Override
//    public void init(ServletConfig config) throws ServletException {
//        super.init(config);
//    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("????");
        Trapezium tixing=new Trapezium();
        request.setAttribute("tixing",tixing);
        //将seriesData存到request
        double a=Double.parseDouble(request.getParameter("shangdi"));
        double b=Double.parseDouble(request.getParameter("xiadi"));
        double c=Double.parseDouble(request.getParameter("gao"));
        double square=((a+b)*c)/2;
        System.out.println("????2"+a+":"+b+":"+c);
        tixing.setShangdi(a);
        tixing.setXiadi(b);
        tixing.setGao(c);
        tixing.setSqurare(square);
        //sevlet里面请求页面跳转
        RequestDispatcher dispatcher=request.getRequestDispatcher("practice1/showResult.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
    }

//    @Override
//    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("gb2312");
//
//    }
}
