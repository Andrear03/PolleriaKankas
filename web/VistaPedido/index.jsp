<%@page import="Modelo.cocinero"%>
<%@page import="ModeloDAO.cocineroDAO"%>
<%@page import="Modelo.Proveedores"%>
<%@page import="ModeloDAO.ProveedoresDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.*"%>
<%-- Inicio por Diego Andre Aranda Reyes--%>

<!DOCTYPE html>
<html>
    <head>  
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>KANKAS</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="all,follow">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <!-- Choices.js-->
        <!-- Google fonts - Muli-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
        <!-- theme stylesheet-->
        <link rel="stylesheet" href="css/header.css" id="theme-stylesheet"> 
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="css/tablas.css"> <!-- para agregar -->
        <!-- Font Awesome -->
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    </head>
    <body>
        <%@ include file="../header/header2.jsp"%>
              <nav id="sidebar">
        <div class="sidebar-header d-flex align-items-center p-4">
          <div class="ms-3 title">
               <div class="ms-3 title">
              <% HttpSession sesion = request.getSession(true); %>
              <CENTER><h1 class="h5 mb-1"><%=sesion.getAttribute("nomusuariologin") %></h1></CENTER> 
            <p class="text-sm text-gray-700 mb-0 lh-1">COCINERO</p>
          </div>
          </div>
            
        </div><span class="text-uppercase text-gray-600 text-xs mx-3 px-2 heading mb-2">Main</span>
        
        <ul class="list-unstyled">
               <li class="sidebar-item"><a class="sidebar-link" href="Cocinero.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                      </svg><span>HOME</span></a>
              </li>
             <li class="sidebar-item active"><a class="sidebar-link" href="Controlador?accion=pedido"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#portfolio-grid-1"> </use>
                      </svg><span>PEDIDO</span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="index.jsp"> 
                  <i class="svg-icon svg-icon-sm svg-icon-heavy fa fa-globe"></i><span>VOLVER A LA PAGINA</span></a>
              </li>
      </nav>

       <!---- INICIO  ---->

        <div class="page-content form-page">
            <div class="container-fluid py-2">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 py-3 px-0">
                    </ol>
                </nav>
            </div>

            <section class="tables py-0">
                <div class="container-fluid">
                    <div class="col-lg-12">
                        <div class="card mb-0">
                            <div class="card-header">
                                <h2 class="h2 mb-0 text-center">PEDIDO</h2>
                            </div>
                            <div class="card-body pt-0">
                                <div class="table-responsive">
                                    <div class="nuevo">
                                        <a href="Controlador?accion=AgregarPedido"> <i class="fa fa-plus-circle"></i> AGREGAR PEDIDO</a><br><br>

                                    </div>
                                    <table class="table mb-0 table-striped table-hover">

                                        <thead>
                                            <tr>

                                                <th>ID</th>
                                                <th>USUARIO</th>
                                                <th>FECHA</th>
                                                <th>CONTENIDO</th>
                                             
                                            
                                            </tr>
                                        </thead>
                                        <tbody>
                                                                                           
                                            <%
                                                cocineroDAO codao = new cocineroDAO();
                                                List<cocinero> list = codao.listar();
                                                Iterator<cocinero> iter = list.iterator();
                                                        
                                                cocinero co = null;
                                                while (iter.hasNext()) {
                                                    co = iter.next();
                                            %>

                                            <tr>
                                                <td> <%=co.getIdmensaje()%>   </td>
                                                <td> <%=co.getFkidusuario()%>   </td>
                                                <td> <%=co.getFecha() %>   </td>
                                                <td> <%=co.getContenido()%>   </td>
                                            

                                            </tr>
                                            <%}%>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <footer class="position-absolute bottom-0 bg-dash-dark-2 text-white text-center py-3 w-100 text-xs" id="footer">
                <div class="container-fluid text-center">
                    <p class="mb-0 text-dash-gray">2021 &copy; ARANDA <a href="https://bootstrapious.com">Bootstrapious</a>.</p>
                </div>
            </footer>
        </div>
        <script src="js/front.js"></script>
    </body>
</html>
<%-- Fin por Diego Andre Aranda Reyes--%>