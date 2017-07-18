package demo1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/result")
public class Servlet01 extends HttpServlet{
	
	public Servlet01(){
		super();
	}
	
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
		doGet(req,res);
	}

	
	public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.println("<html>");
		out.println("result<br/>");
		out.println("id:"+ req.getParameter("id"));
		out.println("password:"+ req.getParameter("password"));
		out.println("</html>");
	}

}

