package javaservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tcode = request.getParameter("usercode");
		tcode = tcode.toLowerCase();
		String iPassword = request.getParameter("iPassword");
		HttpSession session = request.getSession();
		
		try {
			response.setContentType("text/html");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/serpost", "root", "Thedaarickrandom203");
			
			PreparedStatement ps = con.prepareStatement("select * from trabajadores where tcode=? and password=?");
			ps.setString(1, tcode);
			ps.setString(2, iPassword);
			ResultSet rs = ps.executeQuery();
			RequestDispatcher rd = null;
			if(rs.next()) {
				session.setAttribute("tcode", rs.getString("tcode").toUpperCase());
				session.setAttribute("tname", rs.getString("firstname"));
				session.setAttribute("tlast", rs.getString("lastname"));
				rd = request.getRequestDispatcher("mainpage.jsp");
			}
			else {
				request.setAttribute("status", "failed");
				rd = request.getRequestDispatcher("index.jsp");
			}
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
