
<header id="header" class="fixed-top d-flex align-items-center header-transparent">
<div class="container-fluid container-xl d-flex align-items-center justify-content-between">

    <h1><a href="index.jsp">KANKAS</a></h1>
    
    </div>
      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">INICIO</a></li>
          <li><a class="nav-link scrollto" href="#menu">MENU</a></li>
          <li><a class="nav-link scrollto" href="#specials">PLATOS ESPECIALES</a></li>
          <li><a class="nav-link scrollto" href="#chefs">CHEFS</a></li>
          <li><a class="nav-link scrollto" href="#contact">CONTACTANOS</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>

    <div class="header_top">
        <div class="container-fluid">
            <div class="top_nav_container">
                <div class="contact_nav" >                
                </div>
                <div class="user_option_box">
                    <%             
                    HttpSession sesion = request.getSession(true);            
                    if (sesion.getAttribute("fkidrolusuario")==null){
                        %>
                    <a href="Controlador?accion=LogearUsuario" class="account-link">
                        <i class="fa fa-user" aria-hidden="true" style="color:#BF9765"></i>
                        <span>
                            INGRESA
                        </span>
                    </a><%
                        }else if((int)sesion.getAttribute("fkidrolusuario")==2){
%>
                    <a href="kankas.jsp" class="account-link">
                        <i class="fa fa-user" aria-hidden="true" style="color:#BF9765"></i>
                        <span>
                            Volvemos a Admin
                        </span>
                    </a>           
                    <%
}
else{
                    %>           
                    <a href="Controlador?accion=LogoutUsuario" class="account-link">
                        <i class="fa fa-user" aria-hidden="true" style="color:#BF9765"></i>
                        <span>
                            Logout
                        </span>
                    </a>          
                    <%
                        }
                    %>
                </div>
            </div>

        </div>
    </div>
  
    </div>
  </header>
   