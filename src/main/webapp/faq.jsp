<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
if(session.getAttribute("tcode") == null){
	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Serpost | Preguntas Frecuentes</title>

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
                    <h2 class="fs-1 mt-3">Preguntas Frecuentes</h2>
                    <hr />
                    <ul>
                        <li>
                            <p>
                                <b>
                                    Para conocer dónde se encuentra mi envío a
                                    través de la página web de Serpost ¿debo
                                    necesariamente tener el número de registro
                                    de mí envío (tracking)?
                                </b>
                                <br />
                                Sí, es indispensable el número de registro.<br />
                                Cuentan con trazabilidad, los envíos cuyo número
                                de seguimiento comienzan con las letras R, C o
                                E.
                            </p>
                        </li>
                        <li>
                            <p>
                                <b>
                                    Mi envío ya llegó al Perú y de acuerdo con
                                    “Seguimiento en Línea" de Serpost, está
                                    disponible para recogerlo, ¿si no me acerco
                                    a la oficina postal, lo traen a mi
                                    domicilio?
                                </b>
                                <br />
                                Sí, en un plazo que no excede los 10 días
                                calendario.
                            </p>
                        </li>
                        <li>
                            <p>
                                <b>
                                    ¿Qué es un Envío Común? ¿Tiene trazabilidad?
                                </b>
                                <br />
                                Se trata de un tipo de envío de nuestro servicio
                                económico. Este tipo de envío no tiene
                                trazabilidad debido a que no se registra en los
                                sistemas de seguimiento y localización de
                                envíos; salvo algunos envíos que pasan un
                                trámite de Aduana.
                            </p>
                        </li>
                        <li>
                            <p>
                                <b> ¿Cómo sé que mi envío es COMÚN? </b>
                                <br />
                                Si el código de tracking de tu envío comienza
                                con UA, UH, UL, UU, LP, SY, entre otros,
                                corresponden a ENVÍOS COMUNES, por lo que no
                                cuentan con trazabilidad. Serpost no brinda
                                información de estos envíos por normativa de la
                                Unión Postal Universal (UPU). Deberás esperar
                                hasta que el envío llegue a tu domicilio, o
                                comunicarte con tu proveedor si se trata de un
                                compra por internet.
                            </p>
                        </li>
                        <li>
                            <p>
                                <b
                                    >Si el cartero entrega mi envío en mi
                                    domicilio o lo recojo de una oficina de
                                    Serpost, ¿debo pagar algún monto de dinero?
                                </b>
                                <br />

                                No existe ningún pago por la entrega de un
                                envío, salvo que la Sunat/Aduanas determine que
                                el contenido del envío esta sujeto a impuestos
                                para lo cual tendrá que realizarse además un
                                trámite ante dicha institución.
                            </p>
                        </li>
                        <li>
                            <p>
                                <b>
                                    ¿Serpost también brinda servicio de
                                    distribución internacional?
                                </b>
                                <br />
                                Sí, llegamos a más de 190 países. Todo ello
                                gracias a que somos parte de la Unión Postal
                                Universal (UPU).
                            </p>
                        </li>
                        <li>
                            <p>
                                <b
                                    >¿Puedo enviar dinero y tarjetas de crédito
                                    en un envío postal?</b
                                ><br />

                                No, está prohibido. Pero puede optar por nuestro
                                servicio de Correogiros, para envío de dinero a
                                nivel nacional e internacional.
                            </p>
                        </li>
                        <li>
                            <p>
                                <b
                                    >Estoy a la espera de un envío proveniente
                                    del extranjero, ha pasado mucho tiempo y no
                                    llega aún ¿puedo presentar un reclamo a
                                    Serpost?</b
                                ><br />
                                No, la única persona que puede presentar un
                                reclamo es el remitente del envío, y podrá
                                hacerlo transcurrido 20 días desde la
                                contratación del servicio en las oficinas de
                                correo del país desde donde efectuó el envío.
                            </p>
                        </li>
                        <li>
                            <p>
                                <b
                                    >Estoy a la espera de un envío y su origen
                                    es nacional, ¿puedo presentar un reclamo a
                                    Serpost?</b
                                >
                                <br />
                                No, la única persona que puede presentar un
                                reclamo es el remitente del envío, y podrá
                                hacerlo transcurrido los 5 días posteriores de
                                contratado el servicio. El reclamo se presenta
                                de manera física en cualquier oficina de
                                Serpost, adjuntando la boleta de venta y su
                                documento de identidad (DNI, pasaporte o carné
                                de extranjería).
                            </p>
                        </li>
                        <li>
                            <p>
                                <b
                                    >¿Cómo se puede asegurar que los envíos que
                                    compro sean distribuidos por Serpost?</b
                                >
                                <br />
                                Eso depende de las plataformas de comercio
                                electrónico en línea. Son ellos los que deciden
                                por alguna de las opciones existentes en el
                                mercado para realizar la distribución de envíos
                                en cada país de destino. Serpost no puede
                                coordinar con las plataformas de comercio
                                electrónico para que nosotros nos encarguemos de
                                la distribución.
                            </p>
                        </li>
                        <li>
                            <p>
                                <b
                                    >¿Qué sucede si mi envío ha sido retenido
                                    por Aduanas?</b
                                ><br />Para los envíos con condición aduanera,
                                usted deberá consultar el estado de su paquete
                                ingresando a:
                                <a
                                    target="_blank"
                                    href="https://ww3.sunat.gob.pe/ol-aditimportafacilmc/DepConsulta.htm?action=cargarDepConsultaEstado"
                                    >https://ww3.sunat.gob.pe/ol-aditimportafacilmc/DepConsulta.htm?action=cargarDepConsultaEstado</a
                                >
                                y verificar el motivo de la retención (pago de
                                impuestos, presentación de documentos
                                adicionales, etc.), asimismo se le enviará una
                                notificación emitida por Aduanas brindándole la
                                información correspondiente. Serpost no es
                                responsable del impuesto asignado a su mercancía
                                ni de los trámites adicionales solicitados,
                                nuestra empresa solo cumple con las
                                disposiciones brindadas por Aduanas.
                            </p>
                        </li>
                        <li>
                            <p>
                                <b
                                    >Me llegó un correo sospechoso solicitando
                                    pagos a través de enlaces, ¿Serpost solicita
                                    dinero vía correos electrónicos, SMS,
                                    llamadas telefónicas, vía WhatsApp, etc?</b
                                >
                                <br />Serpost NO envía correos electrónicos, SMS
                                y/o mensajes de Whatsapp solicitando pagos a
                                través de enlaces. Se trata de correos
                                fraudulentos que se hacen pasar por nuestra
                                empresa. En el único caso que se solicita
                                depósitos de dinero vía WhatsApp, es solicitando
                                el servicio de Serpost Delivery.
                            </p>
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
