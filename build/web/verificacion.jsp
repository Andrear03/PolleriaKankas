<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="css/veri.css" rel="stylesheet">
</head>
<body class="align">
    <h3>INGRESA TU CODIGO DE VERIFICACION</h3>
    <form action="Controlador">
        <div class="form__field">
            <input input name="verificacion" type="password" class="form__input" pattern=".{6,}" required>
        </div>
        <center>
            <input type="submit" name="verificacion2" class="btn btn-primary width-100" value="Verificar" />
            <input type="hidden" name="accion" value="loguear">
        </center>
    </form>
</body>
</html>
