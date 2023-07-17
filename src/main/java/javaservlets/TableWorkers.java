package javaservlets;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TableWorkers
 */
@WebServlet("/TableWorkers")
public class TableWorkers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con;
		String url = "jdbc:mysql://localhost:3306/serpost";
		String user = "root";
		String clave = "123456";
		String Driver = "com.mysql.jdbc.Driver";
		try {
			Class.forName(Driver);
			con = DriverManager.getConnection(url, user, clave);
			
			PreparedStatement ps;
			ResultSet rs;
			ps = con.prepareStatement("select * from trabajadores");
			rs = ps.executeQuery();
		} catch (Exception e) {
			
		}
		
	}

}
