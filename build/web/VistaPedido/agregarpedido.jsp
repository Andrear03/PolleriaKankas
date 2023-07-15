<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.*"%>
<%@page import ="Modelo.Proveedores"%>
<%@page import ="ModeloDAO.ProveedoresDAO"%>

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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <link rel="stylesheet" href="css/header.css" id="theme-stylesheet"> 
    <link rel="stylesheet" href="css/agregar.css"> <!-- para agregar -->
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
                      <h2 class="h2 mb-0 text-center">AGREGAR PEDIDO</h2>
                    </div>
                      
                    <div class="card-body pt-0">
                      <form action="Controlador" class="form-horizontal">
                                                 
                          <div class="row">
                          <label class="col-sm-3 form-label">USUARIO</label>
                          <div class="col-sm-9">
                              <input class="form-control" type="number" name="txtidusuario" value="<%=sesion.getAttribute("id") %>" readonly>
                          </div>
                        </div>

                        <div class="my-4"></div>
                 
                        <div class="row">
                          <label class="col-sm-3 form-label">FECHA</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="datetime-local"  name="txtfecha" required>
                          </div>
                        </div>
                         <div class="my-4"></div>
                 
                        <div class="row">
                          <label class="col-sm-3 form-label">CONTENIDO</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="text"  name="txtcontenido" required>
                          </div>
                        </div>
                        <div class="my-4"></div>
                        <!--  -->
                        <input type="hidden" name="accion" value="AgregarPedido">
                         <div class="my-4"></div>
                       
                          
                        <div class="my-4"></div>
                        <div class="container-fluid py-2">
                          <div class="modal-footer">
                            <a href="Cocinero.jsp" class="btn btn-secondary"  >Regresar</a>
                            <input class="btn btn-primary" name="AgregarPedidoDB" value="AgregarPedidoDB" type="submit"/>
                          </div>
                        </div>          
                        </form>
                    </div>
                  </div>
              </div>
            </div>
          </section>
        </div>      
    </div>
    <script src="js/front.js"></script>
  </body>
</html>
<%-- Fin por Diego Andre Aranda Reyes--%>


