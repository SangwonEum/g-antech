package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import Database.DbUtil;

@WebServlet("/read")
public class Read  extends HttpServlet{
	DbUtil db = new DbUtil();
	RequestDispatcher dispatcher = null;
	Connection con  = null;
	ResultSet rs = null;
	public Read(){
		super();
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		doGet(req, res);
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		int numList = Integer.parseInt(req.getParameter("numList"));
		List<Map> students  = new ArrayList<Map>();
		con = db.Connect();
		String sql = "";
		
		int start;
		int end;
		
		
		if(pageNum==1) {
			start = 1;
			end = numList;
		}else{
			start = pageNum * numList;
			end = numList + (pageNum * numList);
		}
		
		System.out.println("start: "+ start + " end :"+ end);
		sql = "select * from student where id between "+ start +" and "+ end+";";
		
		
		try {
			rs = con.createStatement().executeQuery(sql);
			
			while(rs.next()){
				Map s = new HashMap();
				s.put("id", rs.getInt("id"));
				s.put("name", rs.getString("name"));
				s.put("start",start );
				s.put("end", end);
				students.add(s);
			}
			String return_value = new ObjectMapper().writeValueAsString(students);
			res.getWriter().write(return_value); 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}
