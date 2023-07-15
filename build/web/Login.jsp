<%@page import="ModeloDAO.LoginDAO "  %>
<%@page import="Modelo.Usuarios "  %>

<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="css/login.css" rel="stylesheet">

    <title>Register</title>
  </head>
  <main>
    <section class="section-login">
        <div class="section-main">
            <div class="section-login-1">
                <div class="section-login-1-main">

                    <h1 class="section-login-1-title">Polleria Kankas</h1>
                    <p class="section-login-1-text"></p>
                    <div class="section-login-1-img">
                        <img src="img/pollo.png" alt="" style="width: 80%; margin-left: auto; margin-right: auto;">
                    </div>
                </div>
            </div>
            <div class="section-login-2">
                <div class="section-login-2-main">

                    <h1 class="section-login-2-title">Login</h1>
                    <form class="section-login-2-form" action="Controlador">
                        <div class="login-form-1">
                            <label for="input-email">Email address/Username</label>
                            <input type="text" id="input-email" name="txtEmail" required>
                        </div>
                        <div class="login-form-3">
                            <label for="input-password">Password</label>
                            <input type="password" id="input-password" name="txtPassword" required>
                        </div>
                        <input type="hidden" name="accion" value="LogearUsuario">
                        <div class="login-form-submit-btn">
                            <button type="submit" name="LogearUsuarioForm">Logearse</button>
                        </div>
                        
                    </form>

                </div>
            </div>
        </div>
    </section>
</main>

</html>