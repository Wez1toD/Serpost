<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
        <title>Serpost | Agregar Trabajador</title>

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
        <div class="container-fluid">
            <div class="row flex-nowrap">
                <main class="vh-100 overflow-auto mt-3 pb-5">
                    <h2 class="fs-1">
                        <b>Agregar Registro de Trabajador</b>
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
                                required
                            />
                            <label for="inputPassword" class="form-label"
                                >Contraseña</label
                            >
                            <input
                                type="password"
                                id="inputPassword"
                                name="txtPassword"
                                class="form-control mb-3"
                                required
                            />
                            <label for="inputFirstname" class="form-label"
                                >Primer Nombre</label
                            >
                            <input
                                type="text"
                                id="inputFirstname"
                                name="txtFirstname"
                                class="form-control mb-3"
                                required
                            />
                            <label for="inputLastname" class="form-label"
                                >Primer Apellido</label
                            >
                            <input
                                type="text"
                                id="inputLastname"
                                name="txtLastname"
                                class="form-control mb-3"
                                required
                            />
                            <label for="inputValoracion" class="form-label"
                                >Valoración</label
                            >
                            <input
                                type="number"
                                id="inputValoracion"
                                name="txtValoracion"
                                 min="1" max="5"
                                class="form-control mb-3"
                                required
                            />
                            <label for="inputEmail" class="form-label"
                                >E-mail</label
                            >
                            <input
                                type="email"
                                id="inputEmail"
                                name="txtEmail"
                                class="form-control mb-3"
                                required
                            />
                            <a
                                href="adminindex.jsp"
                                class="btn btn-danger fs-5 px-4 mt-3"
                                >Regresar <i class="fa fa-backward"></i
                            ></a>
                            <button class="btn btn-success fs-5 px-4 mx-4 mt-3">
                                Agregar <i class="fa fa-plus"></i>
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
	Connection con;
	String url = "jdbc:mysql://localhost:3306/serpost";
	String user = "root";
	String clave = "123456";
	String Driver = "com.mysql.jdbc.Driver";
	Class.forName(Driver);
	con = DriverManager.getConnection(url, user, clave);
	PreparedStatement ps;
	String code, password, firstname, lastname, valoracion, email;
	code = request.getParameter("txtCode");
	password = request.getParameter("txtPassword");
	firstname = request.getParameter("txtFirstname");
	lastname = request.getParameter("txtLastname");
	valoracion = request.getParameter("txtValoracion");
	email = request.getParameter("txtEmail");
	if(code != null && password != null && firstname != null && lastname != null && valoracion != null && email != null){
		ps = con.prepareStatement("insert into trabajadores values(?,?,?,?,?,?,?)");
		ps.setString(1, code);
		ps.setString(2, password);
		ps.setString(3, firstname);
		ps.setString(4, lastname);
		int valInt = Integer.parseInt(valoracion);
		if(valInt > 5){
			valInt = 5;
			ps.setInt(4, valInt);
		}else{
			ps.setInt(4, valInt);
		}
		ps.setInt(6, 0);
		ps.setString(7, email);
		ps.executeUpdate();
		response.sendRedirect("adminindex.jsp");
	}
%>
