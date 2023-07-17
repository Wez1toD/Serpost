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
        <title>Serpost | Administrador</title>

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

    <body class="overflow-hidden">
        <div class="container-fluid">
            <div class="row flex-nowrap">
                <header
                    id="sidebar"
                    class="col-3 col-sm-2 col-md-3 col-xl-2 vh-100 d-flex flex-column justify-content-between"
                >
                    <nav class="p-2 text-center">
                        <a
                            class="d-flex text-decoration-none mt-1 align-items-center text-dark d-flex justify-content-center w-100 h-100 d-none d-md-inline"
                        >
                            <img
                                src="./Images/logo_Serpost.svg"
                                class="img-fluid d-none d-md-inline bg-white p-md-1 p-md-3 h-75 text-center rounded-5"
                                alt="Serpost"
                            />
                        </a>
                        <hr class="text-white d-none d-md-block" />

                        <ul class="nav nav-pills flex-column mt-4">
                            <li class="nav-item py-2 py-ms-0 rounded-2">
                                <a
                                    href="adminindex.jsp"
                                    class="nav-link text-center text-white text-md-start"
                                >
                                    <i class="fa fa-users fs-5"></i
                                    ><span class="fs-5 ms-3 d-none d-md-inline"
                                        >Trabajadores</span
                                    >
                                </a>
                            </li>
                            <li class="nav-item py-2 py-ms-0 rounded-2">
                                <a
                                    href="mainpage.jsp"
                                    class="nav-link text-center text-white text-md-start"
                                >
                                    <i class="fa fa-eye fs-5"></i
                                    ><span class="fs-5 ms-3 d-none d-md-inline"
                                        >Vista Trabajador</span
                                    >
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <div>
                        <div class="text-white text-center d-none d-md-inline">
                            <p class="fs-5 mb-1">Valoración:</p>
                            <div>
                                <%
                                if(session.getAttribute("tval") != null){
                                	int val = (Integer) session.getAttribute("tval");
                               		for(int i = 0; i < val; i++){
                               		
                               	%>
                               		<i class="fa fa-star ms-2 fs-5"></i>
                               	<%}} %>
                            </div>
                        </div>
                        <div class="dropdown open p-2 mb-2">
                            <div class="dropup">
                                <button
                                    class="btn border-none dropdown-toggle text-white fs-5 d-flex align-items-center m-auto"
                                    type="button"
                                    id="triggerId"
                                    data-bs-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                >
                                    <i class="fa fa-users"></i
                                    ><span class="m-2 d-none d-md-inline"
                                        >${tname}</span
                                    >
                                </button>
                                <div
                                    class="dropdown-menu p-4"
                                    aria-labelledby="triggerId"
                                >
                                    <li class="text-center mb-3">
                                        <img
                                            src="./Images/user.png"
                                            alt="Foto Usuario"
                                            class="rounded-circle"
                                            width="80"
                                            height="80"
                                        />
                                    </li>
                                    <li class="text-center">
                                        <p>
                                            Bienvenido <br />${tname} ${tlast}
                                        </p>
                                    </li>
                                    <li class="text-center">
                                        <p>${tcode}</p>
                                    </li>
                                    <div class="dropdown-divider"></div>
                                    <li class="text-center p-1">
                                        <a
                                            class="dropdown-item"
                                            href="LogoutServlet"
                                            >Cerrar Sesión</a
                                        >
                                    </li>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <main
                    class="col-9 col-sm-10 col-md-9 col-xl-10 vh-100 overflow-auto mt-2 pb-5"
                >
                    <h2 class="fs-1"><b>Registro de Trabajadores</b></h2>
                    <hr />
                    <a href="./Admin/agregart.jsp" class="btn btn-success mb-3 px-3 p-2 fs-6"
                        >Agregar Trabajador <i class="fa fa-plus"></i
                    ></a>
                    <br />
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
            		ps = con.prepareStatement("select * from trabajadores where admin = ?");
            		ps.setInt(1, 0);
            		rs = ps.executeQuery();
                    %>
                    <table class="table">
					  <thead>
					    <tr>
					      <th scope="col">CÓDIGO</th>
					      <th scope="col">NOMBRE</th>
					      <th scope="col">APELLIDO</th>
					      <th scope="col">VALORACIÓN</th>
					      <th scope="col">CORREO</th>
					      <th scope="col">ACCIONES</th>
					    </tr>
					  </thead>
					  <tbody>
					    <%while(rs.next()){ %>
					    <tr>
					      <td><%= rs.getString("tcode").toUpperCase()%></td>
					      <td><%= rs.getString("firstname")%></td>
					      <td><%= rs.getString("lastname")%></td>
					      <td><%= rs.getInt("valoracion")%></td>
					      <td><%= rs.getString("email")%></td>
					      <td>
					      	<a class="btn btn-warning">Editar</a>
					      	<a class="btn btn-danger">Eliminar</a>
					      </td>
					    </tr>
					    <%} %>
					  </tbody>
					</table>
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
    