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
<html lang="en">
    <head>
        <title>Serpost | Modificar Trabajador</title>

        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
            crossorigin="anonymous"
        />
        <script
            src="https://kit.fontawesome.com/09cf7bf932.js"
            crossorigin="anonymous"
        ></script>
        <link rel="stylesheet" href="./Style/stylemainpage.css" />
    </head>

    <body class="overflow-hidden px-3">
    <%
                    Connection con;
            		String url = "jdbc:mysql://localhost:3306/serpost";
            		String user = "root";
            		String clave = "123456";
            		String Driver = "com.mysql.jdbc.Driver";
            		Class.forName(Driver);
            		con = DriverManager.getConnection(url, user, clave);
            			
            		PreparedStatement ps;
            		ResultSet rs;
            		String code = request.getParameter("code"); 
            		ps = con.prepareStatement("select * from trabajadores where tcode = ?");
            		ps.setString(1, code);
            		rs = ps.executeQuery();
            		while(rs.next()){

                    %>
        <div class="container-fluid">
            <div class="row flex-nowrap">
                <main class="vh-100 overflow-auto mt-3 pb-5">
                    <h2 class="fs-1">
                        <b>Modificar Registro de Trabajador</b>
                    </h2>
                    <hr />
                    <div class="row g-2">
                        <form action="" method="post" class="col">
                            <label for="inputCode" class="form-label"
                                >Código</label
                            >
                            <input
                                type="text"
                                id="inputCode"
                                name="txtCode"
                                class="form-control mb-3"
                                readonly
                                value="<%=rs.getString("tcode") %>"
                            />
                            <label for="inputFirstname" class="form-label"
                                >Primer Nombre</label
                            >
                            <input
                                type="text"
                                id="inputFirstname"
                                name="txtFirstname"
                                class="form-control mb-3"
                                value="<%=rs.getString("firstname") %>"
                            />
                            <label for="inputLastname" class="form-label"
                                >Primer Apellido</label
                            >
                            <input
                                type="text"
                                id="inputLastname"
                                name="txtLastname"
                                class="form-control mb-3"
                                value="<%=rs.getString("lastname") %>"
                            />
                            <label for="inputValoracion" class="form-label"
                                >Valoración</label
                            >
                            <input
                                type="number"
                                id="inputValoracion"
                                name="txtValoracion"
                                class="form-control mb-3"
                                 min="1" max="5"
                                value="<%= rs.getInt("valoracion") %>"
                            />
                            <label for="inputEmail" class="form-label"
                                >E-mail</label
                            >
                            <input
                                type="email"
                                id="inputEmail"
                                name="txtEmail"
                                class="form-control mb-3"
                                value="<%= rs.getString("email") %>"
                            />
                            <a
                                href="adminindex.jsp"
                                class="btn btn-danger fs-5 px-4 mt-3"
                                >Regresar <i class="fa fa-backward"></i
                            ></a>
                            <button class="btn btn-success fs-5 px-4 mx-4 mt-3">
                                Modificar <i class="fa fa-plus"></i>
                            </button>
                        </form>
                        <div
                            class="col d-flex justify-content-center align-items-center"
                        >
                            <img src="./Images/logo_Serpost.svg" alt="" />
                        </div>
                    </div>
                    <hr />
                </main>
            </div>
        </div>
        <%} %>
        <!-- Bootstrap JavaScript Libraries -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
            integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
<%	
	String firstname, lastname, email, valoracion;
	firstname = request.getParameter("txtFirstname");
	lastname = request.getParameter("txtLastname");
	email = request.getParameter("txtEmail");
	valoracion = request.getParameter("txtValoracion");
	if(firstname != null && lastname != null && email != null && valoracion != null){
		ps = con.prepareStatement("update trabajadores set firstname=?, lastname=?,email=?,valoracion=? where tcode=?");
		ps.setString(1,firstname);
		ps.setString(2,lastname);
		ps.setString(3,email);
		int valInt = Integer.parseInt(valoracion);
		if(valInt > 5){
			valInt = 5;
			ps.setInt(4, valInt);
		}else{
			ps.setInt(4, valInt);
		}
		ps.setString(5, code);
		ps.executeUpdate();
		response.sendRedirect("adminindex.jsp");
	}
%>