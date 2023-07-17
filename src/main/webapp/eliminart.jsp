<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%
if(session.getAttribute("tcode") == null){
	response.sendRedirect("index.jsp");
}
if(session.getAttribute("tadmin") != null){
	int adminval = (Integer) session.getAttribute("tadmin");
	if (adminval != 1){
		response.sendRedirect("index.jsp");	
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
        Connection con;
   		String url = "jdbc:mysql://localhost:3306/serpost";
   		String user = "root";
   		String clave = "123456";
   		String Driver = "com.mysql.jdbc.Driver";
   		Class.forName(Driver);
   		con = DriverManager.getConnection(url, user, clave);
   			
   		PreparedStatement ps;
   		String code = request.getParameter("code"); 
   		ps = con.prepareStatement("delete from trabajadores where tcode = ?");
   		ps.setString(1, code);
    	ps.executeUpdate();
    	response.sendRedirect("adminindex.jsp");
	%>
</body>
</html>