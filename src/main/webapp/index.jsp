<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
            <div class="container">
                <div class="logo">
                    <img src="./Images/logo_Serpost.svg" alt="SERPOST" />
                </div>
                <form action="LoginServlet" method="post" class="login-form">
                    <div class="user-cont">
                        <label for="user">Código de Trabajador:</label>
                        <input
                            type="text"
                            name="user"
                            id="user"
                            placeholder="Código de trabajador"
                            autocomplete="off"
                            required
                        />
                    </div>
                    <div class="pass-cont">
                        <label for="password">Contraseña:</label>
                        <input
                            type="password"
                            name="password"
                            id="password"
                            placeholder="Contraseña"
                            autocomplete="off"
                            required
                        />
                    </div>
                    <div class="submit-cont">
                        <!-- Reset para resetear el formulario; Submit para mandar el formulario -->
                        <button type="reset">Ingresar</button>
                    </div>
                </form>
            </div>
        </main>
    </body>
</html>
