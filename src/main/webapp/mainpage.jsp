<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
if(session.getAttribute("tcode") == null){
	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Serpost | Página Principal</title>

		<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
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

    <body>
        <header class="container-fluid">
            <div class="row flex-nowrap">
                <div
                    id="sidebar"
                    class="col-auto col-md-4 col-lg-3 col-xl-2 min-vh-100 d-flex flex-column justify-content-between"
                >
                    <nav class="p-2">
                        <a
                            class="d-flex text-decoration-none mt-1 align-items-center text-white d-flex justify-content-center"
                        >
                            <span class="fs-3 d-none d-sm-inline"
                                >SideMenu</span
                            >
                        </a>
                        <hr class="text-white d-none d-sm-block" />

                        <ul class="nav nav-pills flex-column mt-4">
                            <li class="nav-item py-3 py-sm-1 rounded-2">
                                <a
                                    href="#"
                                    class="nav-link text-center text-white text-sm-start"
                                >
                                    <i class="fa fa-house fs-5"></i
                                    ><span class="fs-4 ms-3 d-none d-sm-inline"
                                        >Inicio</span
                                    >
                                </a>
                            </li>
                            <li class="nav-item py-2 py-ms-0 rounded-2">
                                <a
                                    href="#"
                                    class="nav-link text-center text-white text-sm-start"
                                >
                                    <i class="fa fa-user fs-5"></i
                                    ><span class="fs-4 ms-3 d-none d-sm-inline"
                                        >Perfil</span
                                    >
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <div>
                        <div class="text-white text-center d-none d-sm-inline">
                            <p class="fs-5 mb-2">Valoración:</p>
                            <div>
                                <i class="fa fa-star ms-2 fs-3"></i
                                ><i class="fa fa-star ms-2 fs-3"></i
                                ><i class="fa fa-star ms-2 fs-3"></i
                                ><i class="fa fa-star ms-2 fs-3"></i
                                ><i class="fa fa-star ms-2 fs-3"></i>
                            </div>
                        </div>
                        <div class="dropdown open p-2 mb-2">
                            <div class="dropup">
                                <button
                                    class="btn border-none dropdown-toggle text-white fs-5 d-flex align-items-center"
                                    type="button"
                                    id="triggerId"
                                    data-bs-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                >
                                    <i class="fa fa-users"></i
                                    ><span class="m-2 d-none d-sm-inline"
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
                </div>
            </div>
        </header>

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
