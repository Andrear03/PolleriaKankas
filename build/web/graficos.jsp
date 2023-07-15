<%-- 
    Document   : graficos
    Created on : 29 nov 2022, 10:49:28
    Author     : OVALTECH
--%>

<%@page import="java.io.IOException"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.OutputStream"%>
<%@page import="ModeloDAO.NegConsultas"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.jfree.chart.ChartFrame"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

</html>
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
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/header.css"> 
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/charts.css"> <!-- para agregar -->
     <!-- Font Awesome -->
     <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
     
  </head>
  <body>
    <%@ include file="header/header2.jsp"%>
          <nav id="sidebar">
        <div class="sidebar-header d-flex align-items-center p-4">
          <div class="ms-3 title">
             <div class="ms-3 title">
              <% HttpSession sesion = request.getSession(true); %>
              <CENTER><h1 class="h5 mb-1"><%=sesion.getAttribute("nomusuariologin") %></h1></CENTER> 
            <p class="text-sm text-gray-700 mb-0 lh-1">ADMINISTRADOR</p>
          </div>
          </div>
        </div><span class="text-uppercase text-gray-600 text-xs mx-3 px-2 heading mb-2">Main</span>
        <ul class="list-unstyled">
               <li class="sidebar-item "><a class="sidebar-link" href="kankas.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                      </svg><span>HOME</span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="Controlador?accion=listarUsuarios"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#portfolio-grid-1"> </use>
                      </svg><span>GESTIONAR USUARIOS</span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="Controlador?accion=listarProveedores"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#portfolio-grid-1"> </use>
                      </svg><span>GESTIONAR PROVEEDORES</span></a>
              </li>
              <li class="sidebar-item active"><a class="sidebar-link" href="graficos.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#sales-up-1"> </use>
                      </svg><span> INFORME </span></a>
              </li>
 
              <li class="sidebar-item"><a class="sidebar-link" href="index.jsp"> 
                  <i class="svg-icon svg-icon-sm svg-icon-heavy fa fa-globe"></i><span>VOLVER A LA PAGINA</span></a>
              </li>
      </nav>

<!------------------------------------------------- INICIO CONTENIDO ------------------------------------------------------------->

  <div class="page-content">
    <div class="container" >
        <div class="row" >
   
             <div class="page-content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 text-center">
              <h2 class="section-title">INFORMES</h2>
            </div>
              <br>
              <br>
              <div class="col-lg-3 cardsss col-sm-6">
                  <div class="row">
                      
                      <a class="cartext" href="Controlador?accion=listarPC">
                      <div class="card border-0 shadow rounded-xs pt-5">
                          <div class="card-body"> 
                              <center>
                              <h4 class="mt-4 mb-3">Pedidos Cocinero</h4>
                              </center>
                          </div>
                      </div>
                  </a>
                  </div>
              </div>
           
              <div class="col-lg-3 cardsss col-sm-6">
                  <div class="row">
                    <a  class="cartext" href="Controlador?accion=listarPI">
                      <div class="card border-0 shadow rounded-xs pt-5">
                          <div class="card-body"> 
                              <center>
                              <h4 class="mt-4 mb-3">Productos mas Ingresados</h4>
                              </center>
                          </div>
                      </div>
                  </a>
                  </div>
              </div>
     
              <div class="col-lg-3 cardsss col-sm-6">
                  <div class="row">
                    <a class="cartext" href="Controlador?accion=listarEF">
                      <div class="card border-0 shadow rounded-xs pt-5">
                          <div class="card-body">
                              <center>
                              <h4 class="mt-4 mb-3">Entradas cantida por fecha</h4>
                              </center>
                          </div>
                      </div>
                  </a>
                  </div>
              </div>  
              <div class="col-lg-3 cardsss col-sm-6">
                  <div class="row">
                    <a class="cartext" href="Controlador?accion=listarEP">
                      <div class="card border-0 shadow rounded-xs pt-5">
                          <div class="card-body"> 
                              <center>
                              <h4 class="mt-4 mb-3">Estimacion Precio Pollo</h4>
                              </center>
                          </div>
                      </div>
                  </a>
                  </div>
              </div>
            <div>
                  <h2></h2>
            </div>
              <div class="col-lg-3 cardsss col-sm-6">
                  <div class="row">
                    <a class="cartext" href="Controlador?accion=ListarEPA">
                      <div class="card border-0 shadow rounded-xs pt-5">
                          <div class="card-body">
                              <center>
                              <h4 class="mt-4 mb-3">Estimacion Precio Papas</h4>
                              </center>
                          </div>
                      </div>
                  </a>
                  </div>
              </div>
            </div>
        </div>
        </div>
          
         </div>
       </div>
    <!-- Main File-->
    <script src="js/front.js"></script>
</body>
</html>