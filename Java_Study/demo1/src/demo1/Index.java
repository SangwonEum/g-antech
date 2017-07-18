package demo1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/index")
public class Index extends HttpServlet{

	public Index(){
		super();
	}
	
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
		doGet(req,res);
	}

	
	public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		//out.println("index");
		out.println("<html>");
		out.println("<body>");
		out.println("<center>");
		out.println("first servlet<br/>");
		out.println("<table bordr='1'>");
		out.println("<form method='POST' action='result' name='formName' >");
		out.println("<tr>");
		
		out.println("<td> ID: </td><td><input type='text' name='id' value=''></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td> PASSWORD: </td><td><input type='text' name='password' value=''><td/>");
		out.println("</tr>");
		
		out.println("<tr aligh= 'center'>");
		out.println("<td colspan= '4'>");
		
		out.println("<input type='submit' value='login'>");
		
		out.println("</td>");
		out.println("</tr>");
		
		
		out.println("</table>");
		out.println("</form>");
		out.println("</body>");
		out.println("</center>");
		out.println("</html>");
		
	}

}