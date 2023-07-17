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
        <title>Serpost | Protocolos</title>

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
                    <h2 class="text-dark mt-3 fs-1" style="font-weight: 600">
                        NORMAS Y PROCEDIMIENTOS
                    </h2>
                    <hr />
                    <section class="dez-personal">
                        <p>
                            <button
                                class="btn btn-primary"
                                type="button"
                                data-bs-toggle="collapse"
                                data-bs-target="#contentId1"
                                aria-expanded="false"
                                aria-controls="contentId1"
                            >
                                Desplazamiento de Personal
                                <i class="fa-solid fa-arrow-down"></i>
                            </button>
                        </p>
                        <div class="collapse" id="contentId1">
                            <p>
                                <button
                                    class="btn btn-warning"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#content1-1"
                                    aria-expanded="false"
                                    aria-controls="content1-1"
                                >
                                    Desplazamiento
                                    <i class="fa-solid fa-arrow-down"></i>
                                </button>
                            </p>
                            <div class="collapse px-4" id="content1-1">
                                Es la acción administrativa mediante la cual un
                                trabajador de SERPOST S.A. pasa a desempeñarse
                                en diferentes funciones o lugares dentro de la
                                empresa, teniendo en consideración las
                                necesidades del servicio, formación,
                                capacitación, experiencia laboral, grupo
                                ocupacional, categoría y nivel remunerativo.
                                <br />
                                Consideraciones:
                                <ol type="a">
                                    <li>
                                        Es facultad exclusiva de la Subgerencia
                                        de Recursos Humanos el trámite de las
                                        solicitudes de desplazamiento de
                                        personal que soliciten los Subgerentes,
                                        Jefes de Departamento o Administradores
                                        Postales, siempre que estos justifiquen
                                        la necesidad del desplazamiento y que
                                        dicha solicitud sea formalizada mediante
                                        memorando del Gerente de área
                                        correspondiente.
                                    </li>
                                    <li>
                                        Los desplazamientos de personal
                                        procederán únicamente para los
                                        trabajadores de condición laboral
                                        permanente.
                                    </li>
                                    <li>
                                        Cualquier acto o disposición que
                                        contravenga lo dispuesto anteriormente,
                                        será sujeto al procedimiento
                                        disciplinario correspondiente, ello a
                                        efecto de determinar las
                                        responsabilidades respectivas.
                                    </li>
                                </ol>
                            </div>
                            <p>
                                <button
                                    class="btn btn-warning"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#content1-2"
                                    aria-expanded="false"
                                    aria-controls="content1-2"
                                >
                                    Rotación
                                    <i class="fa-solid fa-arrow-down"></i>
                                </button>
                            </p>
                            <div class="collapse px-4" id="content1-2">
                                Consiste en la reubicación del trabajador al
                                interior de SERPOST S.A. para asignarle
                                funciones respetando su grupo ocupacional,
                                categoría y nivel remunerativo alcanzado.<br />
                                Consideraciones:
                                <ol type="a">
                                    <li>
                                        La Rotación sólo puede efectuarse a una
                                        plaza vacante de iguales condiciones,
                                        debiendo registrarse en el Cuadro de
                                        Asignación de Personal - CAP.
                                    </li>
                                    <li>
                                        La plaza de origen del trabajador rotado
                                        quedará vacante.
                                    </li>
                                    <li>
                                        El trabajador propuesto para la Rotación
                                        deberá cumplir con la formación
                                        académica y la experiencia en funciones
                                        similares, establecidas en el Cuadro de
                                        Perfiles del Cargo por Nivel
                                        Ocupacional.
                                    </li>
                                    <li>
                                        La Subgerencia de Recursos Humanos
                                        aprobará o denegará la solicitud de
                                        Rotación dentro de un plazo razonable.
                                    </li>
                                </ol>
                            </div>
                            <p>
                                <button
                                    class="btn btn-warning"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#content1-3"
                                    aria-expanded="false"
                                    aria-controls="content1-3"
                                >
                                    Ascenso
                                    <i class="fa-solid fa-arrow-down"></i>
                                </button>
                            </p>
                            <div class="collapse px-4" id="content1-3">
                                Es el desplazamiento del trabajador hacia un
                                cargo vacante de mayor complejidad y
                                responsabilidad, implica cambio de categoría y
                                nivel remunerativo.
                                <br />
                                Consideraciones:
                                <ol>
                                    <li>
                                        Para la propuesta de Ascenso, el
                                        trabajador deberá tener como tiempo
                                        mínimo de permanencia un (01) año en el
                                        puesto que viene ocupando.
                                    </li>
                                    <li>
                                        El Ascenso no tendrá efecto para
                                        nombramientos de cargos de dirección ni
                                        de confianza.
                                    </li>
                                    <li>
                                        La máxima cantidad de categorías
                                        involucradas en los Ascensos será de dos
                                        (02).
                                    </li>
                                    <li>
                                        Se le otorgará al trabajador propuesto
                                        para el Ascenso el rango C de la nueva
                                        categoría, salvo que se justifique el
                                        otorgamiento de un rango superior.
                                    </li>
                                    <li>
                                        El Directorio de SERPOST S.A. aprobará o
                                        denegará la solicitud de Ascenso dentro
                                        de un plazo razonable.
                                    </li>
                                </ol>
                            </div>
                            <p>
                                <button
                                    class="btn btn-warning"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#content1-4"
                                    aria-expanded="false"
                                    aria-controls="content1-4"
                                >
                                    Promoción
                                    <i class="fa-solid fa-arrow-down"></i>
                                </button>
                            </p>
                            <div class="collapse" id="content1-4">
                                Es la acción por la que al trabajador le es
                                incrementada su remuneración conservando su
                                grupo ocupacional.
                                <br />Consideraciones:
                                <ol type="a">
                                    <li>
                                        Los requisitos para la Promoción,
                                        referidos al tiempo mínimo de
                                        permanencia, capacitación, evaluación de
                                        méritos, desempeño laboral y afines,
                                        están establecidos en la Política
                                        Remunerativa vigente de SERPOST S.A.
                                    </li>
                                    <li>
                                        Al trabajador propuesto para la
                                        Promoción se le otorgará el rango
                                        inmediato superior, salvo que se
                                        justifique el otorgamiento de un rango
                                        superior,
                                    </li>
                                    <li>
                                        El Directorio de SERPOST S.A. aprobará o
                                        denegará la solicitud de Promoción
                                        dentro de un plazo razonable.
                                    </li>
                                </ol>
                            </div>
                            <p>
                                <button
                                    class="btn btn-warning"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#content1-5"
                                    aria-expanded="false"
                                    aria-controls="content1-5"
                                >
                                    Designación
                                    <i class="fa-solid fa-arrow-down"></i>
                                </button>
                            </p>
                            <div class="collapse" id="content1-5">
                                Es la acción de personal mediante la cual se
                                nombra a un trabajador en cargo vacante de
                                dirección o confianza. <br />
                                Consideraciones:
                                <ol type="a">
                                    <li>
                                        La Designación se realizará una vez que
                                        el trabajador haya ganado la plaza
                                        vacante, esto de acuerdo con el
                                        Procedimiento para el Reclutamiento,
                                        Selección y Contratación de Personal
                                        vigente de SERPOST S.A. y el Lineamiento
                                        Corporativo: "Lineamiento para Selección
                                        de Gerentes y Cargos Equivalentes de las
                                        Empresas bajo el ámbito del FONAFE".
                                    </li>
                                    <li>
                                        Este nombramiento deja vacante la plaza
                                        original del trabajador designado.
                                    </li>
                                    <li>
                                        La Subgerencia de Recursos Humanos
                                        formalizará la Designación mediante un
                                        memorando.
                                    </li>
                                </ol>
                            </div>
                            <p>
                                <button
                                    class="btn btn-warning"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#content1-6"
                                    aria-expanded="false"
                                    aria-controls="content1-6"
                                >
                                    Comisión de Servicio
                                    <i class="fa-solid fa-arrow-down"></i>
                                </button>
                            </p>
                            <div class="collapse" id="content1-6">
                                Consiste en el desplazamiento del trabajador
                                fuera de la sede habitual de trabajo, para
                                realizar funciones según su grupo ocupacional y
                                especialidad alcanzada y que estén directamente
                                relacionadas con los objetivos de SERPOST S.A.
                                <br />Consideraciones:
                                <ol type="a">
                                    <li>
                                        Se efectuará por necesidad del servicio,
                                        fundamentándose la labor a cumplir.
                                    </li>
                                    <li>
                                        La Comisión de Servicio puede ser a
                                        nivel local, nacional o internacional,
                                        de acuerdo con las normas y
                                        procedimientos para la formulación y
                                        aprobación de gastos de viaje en
                                        comisión de servicios.
                                    </li>
                                    <li>
                                        El documento que autoriza la Comisión de
                                        Servicio contendrá la fecha de inicio y
                                        término, sin exceder en ningún caso el
                                        máximo de treinta (30) días naturales
                                        por vez, con un máximo de 180 días
                                        naturales por año, el mimdo que deberá
                                        ser comunicado al trabajador con copia a
                                        la Subgerencia de Recursos Humanos,
                                        antes del inicio de la comisión, siempre
                                        que la Comisión de Servicio sea superior
                                        a siete (07) días.
                                    </li>
                                    <li>
                                        El trabajador comisionado continuará
                                        percibiendo sus remuneraciones y
                                        beneficios que le correspondan, así como
                                        la conservación de su plaza.
                                    </li>
                                    <li>
                                        Si la Comisión de Servicio es menor o
                                        igual a siete (07) días calendarios y
                                        consecutivos dentro de fa localidad, se
                                        deberá usar el formato "Autorización de
                                        Permiso" (Anexo N° 1) y será autorizado
                                        por el jefe inmediato.
                                    </li>
                                    <li>
                                        La Comisión de Servicio será autorizada
                                        por los siguientes funcionarios:
                                        <ul>
                                            <li>
                                                El jefe inmediato (Administrador
                                                Postal, de ser el caso) si la
                                                comisión se efectúa por horas
                                                hasta un máximo de dos (02) días
                                                dentro de la localidad, debiendo
                                                utilizar el formato
                                                "Autorización de Permiso" (Anexo
                                                N° 1).
                                            </li>
                                            <li>
                                                El Subgerente de Área hasta un
                                                máximo de quince (15) días
                                                calendarios, debiendo el
                                                trabajador hacer entrega de
                                                cargo a su jefe inmediato o
                                                quien este designe.
                                            </li>
                                            <li>
                                                El Gerente de Área hasta un
                                                máximo de treinta (30) días
                                                calendarios, debiendo el
                                                trabajador hacer entrega del
                                                cargo a su jefe inmediato o
                                                quien este designe.
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        La Comisión de Servicio deberá ser
                                        comunicada a la Subgerencia de Recursos
                                        Humanos para los fines de control de
                                        asistencia.
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </section>
                    <section class="at-denuncias">
                        <p>
                            <button
                                class="btn btn-primary"
                                type="button"
                                data-bs-toggle="collapse"
                                data-bs-target="#contentId2"
                                aria-expanded="false"
                                aria-controls="contentId2"
                            >
                                Sistema de Atención al Clientes
                                <i class="fa-solid fa-arrow-down"></i>
                            </button>
                        </p>
                        <div class="collapse" id="contentId2">
                            <p>
                                <button
                                    class="btn btn-warning"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#content2-1"
                                    aria-expanded="false"
                                    aria-controls="content2-1"
                                >
                                    Normas
                                    <i class="fa-solid fa-arrow-down"></i>
                                </button>
                            </p>
                            <div class="collapse" id="content2-1">
                                <ol>
                                    <li>
                                        El Sistema de Atención al Cliente (SAC)
                                        tiene como finalidad brindar un servicio
                                        personalizado a los usuarios atendiendo
                                        consultas, recibiendo reclamos y
                                        sugerencias.
                                    </li>
                                    <li>
                                        El Sistema de Atención al Cliente (SAC)
                                        permite generar información estadística
                                        que servirá a las diferentes áreas para
                                        mejorar la calidad del servicio.
                                    </li>
                                    <li>
                                        El Sistema de Atención al Cliente (SAC)
                                        está soportado por un servicio de Call
                                        Center instalado en la Central
                                        Telefónica, el cual a través de un
                                        dispositivo denominado hunting cíclico
                                        deriva las llamadas a las operadoras y
                                        al supervisor.
                                    </li>
                                    <li>
                                        El ámbito en el que se desarrolla el SAC
                                        es a nivel nacional.
                                    </li>
                                    <li>
                                        Las Gerencias Postal y Comercial
                                        proporcionarán la información necesaria
                                        para el funcionamiento del SAC y serán
                                        los responsables de actualizar
                                        oportunamente la base de datos del
                                        sistema.
                                    </li>
                                    <li>
                                        La Gerencia Postal a través del Área de
                                        Encaminamiento establecerá los plazos de
                                        encaminamiento de los envíos postales
                                        por servicios a fin de que el SAC brinde
                                        la información precisa para cada tipo;
                                        asimismo, será la encargada de
                                        actualizar de manera oportuna la base de
                                        datos respectiva.
                                    </li>
                                    <li>
                                        El Departamento de Sistemas de
                                        Información de la Sub Gerencia de
                                        Tecnología de la Información adaptará
                                        y/o formulará el sistema informático
                                        (Software) necesario para consolidar la
                                        información a brindar en el SAC.
                                    </li>
                                    <li>
                                        El Departamento de Tecnología y
                                        Comunicaciones coordinará los aspectos
                                        requeridos para el mantenimiento de los
                                        equipos y servicios conexos necesarios
                                        para el funcionamiento del SAC.
                                    </li>
                                    <li>
                                        La Gerencia de Administración de
                                        Recursos proporcionará el material,
                                        equipos y mobiliario necesario para la
                                        eficiente operatividad del SAC.
                                    </li>
                                    <li>
                                        El Área de Atención al Cliente
                                        suministrará información al sistema con
                                        los avances de los expedientes por
                                        reclamos para mantener actualizado el
                                        SAC.
                                    </li>
                                    <li>
                                        Los productos o servicios que se brindan
                                        a través del SAC al usuario son los
                                        siguientes:
                                    </li>
                                    <ol type="a">
                                        <li>Información:</li>
                                        <ul>
                                            <li>Operativa:</li>
                                            <ul>
                                                <li>Encomiendas</li>
                                                <ul>
                                                    <li>Nacionales</li>
                                                    <li>Internacionales</li>
                                                </ul>
                                                <li>EMS</li>
                                                <li>Certificados</li>
                                                <li>Control de cargos</li>
                                            </ul>
                                            <li>General</li>
                                            <ul>
                                                <li>
                                                    Plazos de encaminamiento
                                                </li>
                                                <ul>
                                                    <li>Nacional</li>
                                                    <ul>
                                                        <li>Según servicio</li>
                                                    </ul>
                                                    <li>Internacional</li>
                                                    <ul>
                                                        <li>Según servicio</li>
                                                    </ul>
                                                </ul>
                                                <li>Servicios y tarifas</li>
                                                <li>Puntos de venta</li>
                                                <ul>
                                                    <li>Lima Metropolitana</li>
                                                    <ul>
                                                        <li>
                                                            Propios
                                                            (Administraciones y
                                                            oficinas)
                                                        </li>
                                                        <li>
                                                            Terceros
                                                            (Representantes
                                                            comerciales)
                                                        </li>
                                                    </ul>
                                                    <li>Nacional</li>
                                                    <ul>
                                                        <li>
                                                            Propios
                                                            (Administraciones y
                                                            Oficinas)
                                                        </li>
                                                        <li>
                                                            Terceros
                                                            (Representantes
                                                            comerciales)
                                                        </li>
                                                    </ul>
                                                </ul>
                                                <li>
                                                    Productos prohibidos,
                                                    restringidos y perecibles
                                                </li>
                                                <li>
                                                    Filatelia (sellos postales
                                                    vigentes)
                                                </li>
                                                <li>Código Postal</li>
                                            </ul>
                                        </ul>
                                        <li>Sugerencias</li>
                                        <li>Consultas y reclamos:</li>
                                        <ul>
                                            <li>Sobre envíos postales</li>
                                            <ul>
                                                <li>Solución inmediata</li>
                                                <li>
                                                    Solución mediante
                                                    seguimiento (se asigna
                                                    código de expediente)
                                                </li>
                                            </ul>
                                            <li>
                                                Sobre personal de la Empresa
                                            </li>
                                        </ul>
                                    </ol>
                                    <li>
                                        Las operadoras del Call Center podrán
                                        atender indistintamente cualquiera de
                                        los productos mencionados.
                                    </li>
                                    <li>
                                        El Departamento de Capacitación y
                                        Bienestar del Personal de la Sub
                                        Gerencia de Recursos Humanos en
                                        coordinación con las Gerencias Postal y
                                        Comercial capacitará a las operadoras,
                                        al supervisor y a las expendedoras a fin
                                        de que:
                                    </li>
                                    <ul>
                                        <li>
                                            El personal involucrado obtenga un
                                            real conocimiento de los servicios,
                                            tarifas y otros relacionados con el
                                            servicio.
                                        </li>
                                        <li>
                                            El personal involucrado se
                                            identifique con la misión y
                                            objetivos de SEMOST S.A.
                                        </li>
                                        <li>
                                            Se capacite al personal involucrado
                                            en técnicas y herramientas
                                            especializadas para la atención al
                                            cliente.
                                        </li>
                                        <li>
                                            Se brinde una eficiente información
                                            al usuario.
                                        </li>
                                    </ul>
                                    <li>
                                        La responsabilidad de la administración
                                        y supervisión del funcionamiento del
                                        Sistema de Atención al Cliente estará a
                                        cargo de la Gerencia Postal.
                                    </li>
                                    <li>
                                        Las Gerencias Postal, Comercial y
                                        Desarrollo Corporativo tendrán acceso al
                                        Sistema de Atención al Cliente para la
                                        obtención de información estadística.
                                    </li>
                                    <li>
                                        Las operadoras del Call Center serán las
                                        encargadas de brindar al cliente/usuario
                                        la información requerida y consignada en
                                        los archivos del Sistema de Atención,
                                        asimismo, recibirán y absolverán
                                        consultas referidas a reclamos. El
                                        supervisor además de atender llamadas
                                        comunes intervendrá cuando la operadora
                                        tenga dificultades en la atención del
                                        cliente.
                                    </li>
                                    <li>
                                        El Área de Atención al Cliente de la
                                        Gerencia Postal atenderá los reclamos
                                        que requieran identificación con número
                                        de expediente y seguirán los
                                        procedimientos descritos en el documento
                                        Normas y Procedimientos de Reclamos e
                                        Indemnización por Pérdida o Extravío de
                                        Envíos Postales.
                                    </li>
                                </ol>
                            </div>
                            <p>
                                <button
                                    class="btn btn-warning"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#content2-2"
                                    aria-expanded="false"
                                    aria-controls="content2-2"
                                >
                                    Procedimientos
                                    <i class="fa-solid fa-arrow-down"></i>
                                </button>
                            </p>
                            <div class="collapse" id="content2-2">
                                <ol>
                                    <li>
                                        La operadora del Call Center ingresará
                                        al Sistema de Atención al Cliente con el
                                        nombre y la clave asignada por el
                                        supervisor.
                                    </li>
                                    <li>
                                        Verificará que la opción "Consulta en
                                        Línea" se encuentre activada de manera
                                        que el sistema pueda contabilizar las
                                        llamadas; en caso de que la operadora o
                                        supervisor requieran ingresar a los
                                        diferentes módulos solo para leer la
                                        información, desactivarán dicha opción
                                        para evitar que se registre en la
                                        estadística del sistema.
                                    </li>
                                    <li>
                                        Al ingresar la llamada a la central del
                                        SAC, el hunting cíclico transferirá la
                                        llamada a la operadora del Call Center
                                        que se encuentre desocupada o al
                                        supervisor.
                                    </li>
                                    <li>
                                        La operadora o el supervisor recibirán
                                        la consulta y diferenciarán si el
                                        cliente desea información o formular un
                                        reclamo.
                                    </li>
                                    <li>
                                        Una vez identificada la necesidad del
                                        cliente, la operadora la atenderá
                                        haciendo uso del SAC.
                                    </li>
                                    <li>
                                        En caso de no poder dar solución a la
                                        consulta/reclamo, lo derivará al
                                        supervisor quien dará solución a la
                                        misma.
                                    </li>
                                </ol>
                            </div>
                            <p>
                                <button
                                    class="btn btn-warning"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#content2-3"
                                    aria-expanded="false"
                                    aria-controls="content2-3"
                                >
                                    Sobre Información
                                    <i class="fa-solid fa-arrow-down"></i>
                                </button>
                            </p>
                            <div class="collapse" id="content2-3">
                                <ol>
                                    <li>
                                        La operadora del Call Center, de acuerdo
                                        al tipo de información solicitada,
                                        accederá al sistema informático
                                        correspondiente, pudiendo ser
                                        información operativa referida a
                                        encomiendas, EMS, certificados y control
                                        de cargos, o información general
                                        referida a plazos de encaminamiento,
                                        servicios y tarifas, prohibiciones,
                                        puntos de venta, filatelia, código
                                        postal y otros.
                                    </li>
                                    <li>
                                        Si la información es operativa se le
                                        pedirá el número de registro del envío,
                                        los nombres del remitente y del
                                        destinatario para la búsqueda en el
                                        sistema, entregando la información
                                        requerida al cliente.
                                    </li>
                                    <li>
                                        Tratándose de información general se
                                        accederá al sistema entregando la
                                        información al cliente.
                                    </li>
                                    <li>
                                        Si la información requerida por el
                                        usuario no está consignada en el sistema
                                        informático, la operadora del Call
                                        Center transferirá la llamada al
                                        supervisor para su atención. En caso de
                                        que el supervisor no esté disponible, se
                                        solicitará al cliente su número
                                        telefónico para entregarle la
                                        información una vez que se encuentre
                                        registrada en el sistema.
                                    </li>
                                    <li>
                                        En el formato "Control Estadístico de
                                        Llamadas Sistema de Atención al Cliente"
                                        (Anexo-l), se llevará la estadística de
                                        las mismas por tipo de información, que
                                        será elaborada mediante contadores que
                                        registrarán las llamadas cada vez que se
                                        acceda a determinada pantalla del
                                        sistema.
                                    </li>
                                </ol>
                            </div>
                            <p>
                                <button
                                    class="btn btn-warning"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#content2-4"
                                    aria-expanded="false"
                                    aria-controls="content2-4"
                                >
                                    Sobre Reclamos
                                    <i class="fa-solid fa-arrow-down"></i>
                                </button>
                            </p>
                            <div class="collapse" id="content2-4">
                                <p class="fs-5"><b>Envíos Postales</b></p>
                                <p><strong>Solución inmediata</strong></p>
                                <ol>
                                    <li>
                                        Ingresar los datos del usuario (nombre
                                        y/o razón social, dirección, teléfono,
                                        DNI y/o RUC). Si la información está
                                        disponible en el sistema, se le brindará
                                        de forma inmediata.
                                    </li>
                                </ol>
                                <p>
                                    <strong
                                        >Solución mediante seguimiento</strong
                                    >
                                </p>
                                <ol start="2">
                                    <li>
                                        Anotar los datos del envío y enviarlos a
                                        través de la red al computador del
                                        supervisor para su verificación.
                                    </li>
                                    <li>
                                        Cuando el supervisor no esté en
                                        condiciones de dar respuesta a la
                                        consulta, se enviará por medio de la red
                                        al Área de Atención al Cliente de la
                                        Gerencia Postal.
                                    </li>
                                    <li>
                                        El Área de Atención al Cliente realizará
                                        los seguimientos correspondientes de
                                        acuerdo a los procedimientos aprobados
                                        por la Empresa y actualizará el sistema
                                        con los avances que se efectúen en la
                                        consulta.
                                    </li>
                                    <li>
                                        El Área de Atención al Cliente asignará
                                        un número de expediente, el cual será
                                        comunicado al cliente/usuario por
                                        personal del área, a través de la vía
                                        telefónica, de manera que pueda acceder
                                        a los avances de su reclamo entregando
                                        dicho número.
                                    </li>
                                </ol>
                                <p>
                                    <strong
                                        >Información de la situación del
                                        reclamo</strong
                                    >
                                </p>
                                <ol>
                                    <li>
                                        Solicitaré el número de expediente al
                                        usuario y accederé al Sistema de
                                        Reclamos para obtener la información
                                        referente al reclamo.
                                    </li>
                                </ol>
                                <p><strong>Personal de la Empresa</strong></p>
                                <ol>
                                    <li>
                                        Ingresarán al sistema los datos del
                                        usuario, indicando y registrando el
                                        motivo del reclamo.
                                    </li>
                                    <li>
                                        La operadora informará al supervisor del
                                        SAC sobre el reclamo formulado por el
                                        cliente/usuario sobre personal de la
                                        Empresa, remitiéndolo al Área de
                                        Atención al Cliente, la misma que se
                                        encargará de hacer el seguimiento
                                        correspondiente para lo cual coordinará
                                        con las áreas involucradas para la
                                        solución del reclamo.
                                    </li>
                                    <li>
                                        En el formato "Control Estadístico de
                                        llamadas Sistema de Atención al Cliente"
                                        (Anexo-l), se llevará la estadística de
                                        las mismas por tipo de reclamo sobre
                                        personal de la Empresa.
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </section>
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
