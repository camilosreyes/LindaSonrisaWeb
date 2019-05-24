<%-- 
Document   : Usuarios
Created on : 22-05-2019, 12:05:12
Author     : atomi
--%>

<%@page import="java.util.ArrayList" %>
<%@page import="dao.UsuarioDaoImp" %>
<%@page import="dto.UsuarioDto" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LISTADO DE USUARIOS - LINDA SONRISA</title>

    <!-- Bootstrap -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    


    <style>
            .content {
                    margin-top: 80px;
            }
    </style>

</head>
<body>
    <div class="container">
            <div class="content">
                    <h2>Lista de Usuarios</h2>
                   
                    <br />
                    <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>id</th>
                            <th>Nombre de usuario</th>
                            <th>Rol</th>
                            <th>Acciones</th>
                        </tr>
                        </thead>
                        <tbody>
                            <% for (UsuarioDto user : new UsuarioDaoImp().listar()) {%>
                            <tr>
                                <td><%= user.getId_usuario()%></td>
                                <td><span class="glyphicon glyphicon-user" aria-hidden="true"></span>  <%=user.getUsername()%></td>
                                <% if(user.getRol()==1){%>
                                <td>Administador</td>   
                                <%}else if(user.getRol()==2){%>
                                <td>Cliente</td>
                                <%}else {%>
                                <td>Empleado</td>
                                <%}%>
                                <td class="centrada-vertical" style="text-align: center;vertical-align: middle;">
                                    <div class="modal fade" id="modificar<%=user.getId_usuario()%>">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                            <div class="modal-header"><!--modal header-->
                                                <h4 class="modal-title">Editar Usuario</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div><!--fin modal header-->
                                            <div class="modal-body" style="text-align: left;"><!--modal body-->
                                                <div class="ml-auto col-md-10">
                                                    <form method="post" action="../" id="modificar<%=user.getId_usuario()%>"><!--form modal-->
                                                        <div class="form-row">
                                                            <div class="form-group col-md-3" >
                                                                <label for="id">ID</label>
                                                                <input class="form-control" id="id" type="text" value="<%=user.getId_usuario()%>">
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-warning btn-lg btn-default" name="editar" title="Modificar proyecto" data-toggle="modal" data-target="#modificar<%=user.getId_usuario()%>">
                
              </button>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                    </div>
                
            </div>
    </div><center>
    <p>&copy; Linda Sonrisa <?php echo date("Y");?></p
            </center>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../resources/js/bootstrap.js"></script>
</body>

</html>