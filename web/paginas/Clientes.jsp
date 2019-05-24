<%-- 
Document   : Clientes
Created on : 22-05-2019, 12:05:12
Author     : atomi
--%>

<%@page import="java.util.ArrayList" %>
<%@page import="dao.ClienteDaoImp" %>
<%@page import="dto.ClienteDto" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LISTADO DE CLIENTES - LINDA SONRISA</title>

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
                    <h2>Lista de Clientes</h2>
                   
                    <br />
                    <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>N°</th>
                            <th>Rut</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>Fecha de Nacimiento</th>
                            <th>Sexo</th>
                            <th>Nacionalidad</th>
                            <th>Celular</th>
                            <th>Email</th>
                            <th>Direccion</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                        </thead>
                        <tbody>
                            <% int cont = 1; %>
                            <% for (ClienteDto user : new ClienteDaoImp().listar()) {%>
                            <tr>
                                <td><%= cont++ %></td>
                                <td> <%=user.getRut()%></td>
                                <td><span class="" aria-hidden="true"></span>  <%=user.getNombres()%></td>
                                <td><span class="" aria-hidden="true"></span>  <%=user.getApellidos()%></td>
                                <td><span class="" aria-hidden="true"></span>  <%=user.getFecha_nacimiento()%></td>
                                <td><span class="" aria-hidden="true"></span>  <%=user.getSexo()%></td>
                                <td><span class="" aria-hidden="true"></span>  <%=user.getNacionalidad()%></td>
                                <td><span class="" aria-hidden="true"></span>  <%=user.getCelular()%></td>
                                <td><span class="" aria-hidden="true"></span>  <%=user.getCorreo_electronico()%></td>
                                <td><span class="" aria-hidden="true"></span>  <%=user.getDireccion()%></td>
                                <% if(user.getEstado()==1){ %>
                                <td><span class="label label-success">Activo</span></td>
                                <% }else if(user.getEstado()==2){ %>
                                <td><span class="label label-danger">Eliminado</span></td>
                                <% } %> 
                                <td class="centrada-vertical" style="text-align: center;vertical-align: middle;">
                                    <div class="modal fade" id="modificar<%=user.getId_cliente()%>">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                            <div class="modal-header"><!--modal header-->
                                                <h4 class="modal-title">Editar Cliente</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div><!--fin modal header-->
                                            <div class="modal-body" style="text-align: left;"><!--modal body-->
                                                <div class="container">
                                                    <form method="post" action="/LindaSonrisaWeb/CRUDClientes" id="modificar<%=user.getId_cliente()%>" class="form-horizontal" ><!--form modal-->
                                                        <input hidden="" type="text" name="txtId" value="<%=user.getId_cliente()%>" >
                                                        <div class="form-group">
                                                            <label for="id" class="col-sm-1 control-label" style="text-align: left;">Rut</label>
                                                            <div class="col-sm-3">
                                                                <input class="form-control" type="text" name="txtRut" value="<%=user.getRut()%>" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="col-sm-1 control-label" style="text-align: left;">Nombres</label>
                                                            <div class="col-sm-3">
                                                                <input class="form-control" type="text" name="txtNombres" value="<%=user.getNombres()%>" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="col-sm-1 control-label" style="text-align: left;">Apellidos</label>
                                                            <div class="col-sm-3">
                                                                <input class="form-control"type="text" name="txtApellidos" value="<%=user.getApellidos()%>" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="col-sm-1 control-label" style="text-align: left;">Fecha de nacimiento</label>
                                                            <div class="col-sm-3">
                                                                <input class="form-control" type="Date" name="txtFechaNacimiento" value="<%=user.getFecha_nacimiento()%>" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="col-sm-1 control-label" style="text-align: left;">Sexo</label>
                                                            <div class="col-sm-3">
                                                                <select class="form-control" name="cmbNacionalidad" value="<%=user.getSexo()%>">
                                                                    <option value="m">Masculino</option>
                                                                    <option value="f">Femenino</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="col-sm-1 control-label" style="text-align: left;">Nacionalidad</label>
                                                            <div class="col-sm-3">
                                                                <select class="form-control" name="cmbNacionalidad" value="<%=user.getNacionalidad()%>">
                                                                    <option>Chilena</option>
                                                                    <option>Otros</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="col-sm-1 control-label" style="text-align: left;">Celular</label>
                                                            <div class="col-sm-3">
                                                                <input class="form-control" type="text" name="txtCelular" value="<%=user.getCelular()%>" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="col-sm-1 control-label" style="text-align: left;">Email</label>
                                                            <div class="col-sm-3">
                                                                <input class="form-control" type="email" name="txtCorreo" value="<%=user.getCorreo_electronico() %>" >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="col-sm-1 control-label" style="text-align: left;">Direccion</label>
                                                            <div class="col-sm-3">
                                                                <input class="form-control" type="text" name="txtDireccion" value="<%=user.getDireccion() %>">
                                                            </div>
                                                        </div>
                                                             <button name="action" value="Editar" type="submit" class="btn btn-success">Modificar</button>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                               
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-warning btn-sm btn-default" name="editar" title="Modificar Cliente" data-toggle="modal" data-target="#modificar<%=user.getId_cliente()%>">
                                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
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
