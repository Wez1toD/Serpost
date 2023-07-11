<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./Style/style.css" />
        <style>
            @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap");
        </style>
        <title>SERPOST</title>
    </head>
    <body>
        <main>
        	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
            <div class="container">
                <div class="logo">
                    <img src="./Images/logo_Serpost.svg" alt="SERPOST" />
                </div>
                <form action="LoginServlet" method="post" class="login-form">
                    <div class="user-cont">
                        <label for="usercode">Código de Trabajador:</label>
                        <input
                            type="text"
                            name="usercode"
                            id="user"
                            placeholder="Código de trabajador"
                            autocomplete="off"
                            required
                        />
                    </div>
                    <div class="pass-cont">
                        <label for="iPassword">Contraseña:</label>
                        <input
                            type="password"
                            name="iPassword"
                            id="password"
                            placeholder="Contraseña"
                            autocomplete="off"
                            required
                        />
                    </div>
                    <div class="submit-cont">
                        <button>Ingresar</button>
                    </div>
                </form>
            </div>
        </main>
        
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
       		var status = document.getElementById("status").value;
        	if(status == "failed"){
        		Swal.fire({
              	  icon: 'error',
              	  title: 'Lo sentimos...',
              	  text: 'El código de trabajador o la contraseña es incorrecta.'
              	})
        	}
        </script>
    </body>
</html>
