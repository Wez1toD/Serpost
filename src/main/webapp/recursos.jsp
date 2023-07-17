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
        <title>Serpost | Recursos</title>

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
                                class="img-fluid d-none d-md-inline bg-white p-md-1 p-md-3 h-25 text-center rounded-5"
                                alt="Serpost"
                            />
                        </a>
                        <hr class="text-white d-none d-md-block" />

                        <ul class="nav nav-pills flex-column mt-4">
                            <li class="nav-item py-3 py-md-1 rounded-2">
                                <a
                                    href="mainpage.jsp"
                                    class="nav-link text-center text-white text-md-start"
                                    style="cursor: pointer"
                                >
                                    <i class="fa fa-house fs-5"></i
                                    ><span class="fs-5 ms-3 d-none d-md-inline"
                                        >Inicio</span
                                    >
                                </a>
                            </li>

                            <li class="nav-item py-3 py-md-1 rounded-2">
                                <a
                                    href="protocolos.jsp"
                                    class="nav-link text-center text-white text-md-start"
                                >
                                    <i class="fa fa-book fs-5"></i
                                    ><span class="fs-5 ms-3 d-none d-md-inline"
                                        >Protocolos</span
                                    >
                                </a>
                            </li>
                            <li class="nav-item py-3 py-md-1 rounded-2">
                                <a
                                    href="recursos.jsp"
                                    class="nav-link text-center text-white text-md-start"
                                >
                                    <i class="fa fa-video fs-5"></i
                                    ><span class="fs-5 ms-3 d-none d-md-inline"
                                        >Recursos</span
                                    >
                                </a>
                            </li>
                            <li class="nav-item py-3 py-md-1 rounded-2">
                                <a
                                    href="faq.jsp"
                                    class="nav-link text-center text-white text-md-start"
                                >
                                    <i class="fa fa-question fs-5"></i
                                    ><span class="fs-5 ms-3 d-none d-md-inline"
                                        >Preguntas Frecuentes</span
                                    >
                                </a>
                            </li>
                            <li class="nav-item py-2 py-ms-0 rounded-2">
                                <a
                                    href="perfil.jsp"
                                    class="nav-link text-center text-white text-md-start"
                                >
                                    <i class="fa fa-user fs-5"></i
                                    ><span class="fs-5 ms-3 d-none d-md-inline"
                                        >Perfil</span
                                    >
                                </a>
                            </li>
                            <%
                            	if(session.getAttribute("tadmin") != null){
                            		int tadmin = (Integer) session.getAttribute("tadmin");
                            		if(tadmin == 1){
                            %>
                            <li class="nav-item py-2 py-ms-0 rounded-2">
                                <a
                                    href="adminindex.jsp"
                                    class="nav-link text-center text-white text-md-start"
                                >
                                    <i class="fa fa-lock fs-5"></i
                                    ><span class="fs-5 ms-3 d-none d-md-inline"
                                        >Admin</span
                                    >
                                </a>
                            </li>
                            <%}} %>
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
                    <h2>
                        <a
                            class="fs-1 btn text-dark p-0"
                            style="font-weight: bold"
                            data-bs-toggle="collapse"
                            href="#contentId"
                            aria-expanded="true"
                            aria-controls="contentId"
                        >
                            Recursos Visuales
                            <i class="fa fa-chevron-down"></i>
                        </a>
                    </h2>
                    <div class="collapse show" id="contentId">
                        <hr />
                        <div
                            class="row justify-content-center align-items-center g-3 mb-3"
                        >
                            <div class="col-sm">
                                <div class="ratio ratio-16x9">
                                    <iframe
                                        src="https://www.youtube.com/embed/vlDzYIIOYmM"
                                        title="YouTube video"
                                        allowfullscreen
                                    ></iframe>
                                </div>
                            </div>
                            <div class="col-sm">
                                <div class="ratio ratio-16x9">
                                    <iframe
                                        src="https://www.youtube.com/embed/vlDzYIIOYmM"
                                        title="YouTube video"
                                        allowfullscreen
                                    ></iframe>
                                </div>
                            </div>
                            <div class="col-sm">
                                <div class="ratio ratio-16x9">
                                    <iframe
                                        src="https://www.youtube.com/embed/vlDzYIIOYmM"
                                        title="YouTube video"
                                        allowfullscreen
                                    ></iframe>
                                </div>
                            </div>
                        </div>
                        <div
                            class="row justify-content-center align-items-center g-3 mb-3"
                        >
                            <div class="col-sm">
                                <div class="ratio ratio-16x9">
                                    <iframe
                                        src="https://www.youtube.com/embed/vlDzYIIOYmM"
                                        title="YouTube video"
                                        allowfullscreen
                                    ></iframe>
                                </div>
                            </div>
                            <div class="col-sm">
                                <div class="ratio ratio-16x9">
                                    <iframe
                                        src="https://www.youtube.com/embed/vlDzYIIOYmM"
                                        title="YouTube video"
                                        allowfullscreen
                                    ></iframe>
                                </div>
                            </div>
                            <div class="col-sm">
                                <div class="ratio ratio-16x9">
                                    <iframe
                                        src="https://www.youtube.com/embed/vlDzYIIOYmM"
                                        title="YouTube video"
                                        allowfullscreen
                                    ></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <br />
                    <h3>Artículos y blogs:</h3>
                    <ul>
                        <li>
                            <a
                                href="https://rockcontent.com/es/blog/customer-experience/"
                                target="_blank"
                                rel="noopener noreferrer"
                                >RockContent Blog</a
                            >
                        </li>
                        <li>
                            <a
                                href="https://cxblog.com/es/categoria/customer-experience-es/"
                                target="_blank"
                                rel="noopener noreferrer"
                                >Blog de Experiencia al Cliente (CX)</a
                            >
                        </li>
                        <li>
                            <a
                                href="https://botmaker.com/es/posteos/consejos-procesos-atencion-cliente/"
                                target="_blank"
                                rel="noopener noreferrer"
                                >Blog de Botmaker: procesos de atención al
                                cliente</a
                            >
                        </li>
                        <li>
                            <a
                                href="https://www.wowcx.com/tag/experiencia-de-cliente/"
                                target="_blank"
                                rel="noopener noreferrer"
                                >WoW! Customer Experience</a
                            >
                        </li>
                        <li>
                            <a
                                href="https://blog.comparasoftware.com/servicio-cliente/atencion-al-cliente/"
                                target="_blank"
                                rel="noopener noreferrer"
                                >Blog ComparaSoftware: Atención al cliente</a
                            >
                        </li>
                    </ul>
                    <h3>Podcasts y conferencias:</h3>
                    <ul>
                        <li>
                            <strong>"Atención al Cliente" por Neotel:</strong>
                            Este podcast se centra en la atención al cliente y
                            ofrece consejos, estrategias y casos de éxito para
                            mejorar la experiencia del cliente. Cubre temas como
                            la comunicación efectiva, la resolución de problemas
                            y la fidelización de clientes.
                        </li>
                        <li>
                            <strong
                                >"Clientes por Siempre" por Alex Kei:</strong
                            >
                            En este podcast, Alex Kei comparte consejos
                            prácticos y estrategias para brindar un excelente
                            servicio al cliente y construir relaciones duraderas
                            con los clientes. Explora temas como la empatía, la
                            gestión de quejas y la personalización del servicio.
                        </li>
                        <li>
                            <strong
                                >"Experiencia del Cliente" por José Luis
                                Orihuela:</strong
                            >
                            Este podcast analiza la experiencia del cliente
                            desde una perspectiva digital. Explora cómo la
                            tecnología y las nuevas tendencias están cambiando
                            la forma en que las empresas interactúan con los
                            clientes.
                        </li>
                    </ul>
                    <h3>Herramientas de productividad:</h3>
                    <ul>
                        <li>
                            <strong>Trello:</strong> Trello es una herramienta
                            de gestión de tareas y proyectos que permite
                            organizar y asignar tareas de manera eficiente. Es
                            útil para equipos de atención al cliente para
                            realizar un seguimiento de las consultas y mantener
                            un flujo de trabajo organizado.
                        </li>
                        <li>
                            <strong>Slack:</strong> Slack es una plataforma de
                            comunicación en equipo que facilita la colaboración
                            y la comunicación entre los miembros del equipo de
                            atención al cliente. Permite crear canales de chat,
                            compartir archivos y realizar llamadas de voz y
                            video.
                        </li>
                        <li>
                            <strong>Asana:</strong> Asana es una herramienta de
                            gestión de proyectos que ayuda a los equipos a
                            organizar, asignar y realizar un seguimiento de las
                            tareas de manera efectiva. Puede ser útil para
                            gestionar proyectos y tareas relacionados con la
                            atención al cliente.
                        </li>
                    </ul>
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
