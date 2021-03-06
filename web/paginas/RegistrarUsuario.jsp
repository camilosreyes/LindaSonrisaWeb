<%-- 
    Document   : RegistrarUsuario
    Created on : 20-05-2019, 15:46:44
    Author     : atomi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar usuario</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.css">
        
    </head>
    <body>
        <div class="container">
            <form   action="/LindaSonrisaWeb/RegistrarUsuario" method="POST" class="form-horizontal" role="form">
                <H2>Registrar usuario</H2>
                <div class="form-group">
                    <label for="id" class="col-sm-3 control-label">Id</label>
                    <div class="col-sm-9">
                        <input type="text" name="txtId" placeholder="id" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">Nombre de usuario</label>
                    <div class="col-sm-9">
                        <input type="text" name="txtUsuario" placeholder="Username" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Contraseña</label>
                    <div class="col-sm-9">
                        <input type="password" name="txtContrasena" placeholder="Contraseña" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Rol</label>
                    <div class="col-sm-9">
                        <select name="cmbRol" class="col-sm-3 ">
                            <option value="1">Administrador</option>
                            <option value="2">Cliente</option>
                            <option value="3">Empleado</option>
                        </select>
                    </div>
                </div>
                <br>
                <button type="submit" value="" class="btn btn-lg btn-primary">Crear Cuenta</button>
            </form>
        </div>
        <script src="../resources/js/bootstrap.min.js"></script>
    </body>
</html>
