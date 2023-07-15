<!DOCTYPE html>
<html><%--Inicio Diego Andre Aranda Reyes--%>
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>KANKAS</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">

</head>
<%@ include file="header/header.jsp"%>
<body>
<header id="header" class="fixed-top d-flex align-items-center header-transparent">
<div class="container-fluid container-xl d-flex align-items-center justify-content-between">
  </header>
    <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-1.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown"><span>BIENVENIDOS A KANKAS</span> </h2>
                <p class="animate__animated animate__fadeInUp">Somos una gran familia apasionada por la comida, dispuestos a complacer tu exigente paladar con nuestras deliciosas brasas y parrillas preparadas con insumos de alta calidad, en un ambiente acogedor que harán que disfrutes una experiencia única.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item" style="background-image: url(assets/img/slide/slide-2.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">POLLO A LA BRASA</h2>
                <p class="animate__animated animate__fadeInUp">Pregunte por nuestras promociones. Y sal de lo tradicional.Tenemos combinaciones con arroz chaufa, Camotitos fritos y muchos más.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 3 -->
          <div class="carousel-item" style="background-image: url(assets/img/slide/slide-3.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">PARRILLAS</h2>
                <p class="animate__animated animate__fadeInUp">En parrillas les ofrecemos nuestras presentaciones en media parrilla y parrilla familiar las cuales contienen diferentes cortes según la presentación (cortes de res, chuletas de cerdo, filete de pollo, chorizos, salchichas, mollejitas, antichuchos, brochetas de pollo.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                </div>
              </div>
            </div>
          </div>
                    <div class="carousel-item" style="background-image: url(assets/img/slide/slide-4.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">NUESTRO WOK</h2>
                <p class="animate__animated animate__fadeInUp"> Lomo saltado, Tallarin saltado, Arroz chaufa, fetuccini al pesto con churrasco, fetuccini a la huancaína con lomo saltado,  entre otros.</p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                </div>
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>
    </div>
      
  </section>
     <!-- ======= Menu Section ======= -->
    <section id="menu" class="menu">
      <div class="container">

        <div class="section-title">
          <h2>LISTA DE  <span>MENU</span></h2>
        </div>

        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="menu-flters">
              <li data-filter="*" class="filter-active">COMBINACION</li>
              <li data-filter=".filter-starters">BRASAS</li>
              <li data-filter=".filter-parrillas">PARRILLAS</li>
              <li data-filter=".filter-specialty">FUSION CRIOLLA</li>
              <li data-filter=".filter-ensaladas">ENSALADAS</li>
              <li data-filter=".filter-bebidas">BEBIDAS</li>
            </ul>
          </div>
        </div>

        <div class="row menu-container">
           <div class="col-lg-6 menu-item filter-bebidas">
            <div class="menu-content">
              <a href="#">Gaseosa</a><span>11.90</span>
            </div>
            <div class="menu-ingredients">
                 GASEOSA 3LT
            </div>
          </div> 
          <div class="col-lg-6 menu-item filter-bebidas">
            <div class="menu-content">
              <a href="#">JUGO SURTIDO 1</a><span>10.90</span>
            </div>
            <div class="menu-ingredients">
                 JUGO SURTIDO 1/2L DE NARANJA + PIÑA + FRESA
            </div>
          </div>
              <div class="col-lg-6 menu-item filter-bebidas">
            <div class="menu-content">
              <a href="#">JUGO SURTIDO 2</a><span>10.90</span>
            </div>
            <div class="menu-ingredients">
                 JUGO SURTIDO 1/2L DE PAPAYA + NARANJA + PLÁTANO
            </div>
          </div> 
               <div class="col-lg-6 menu-item filter-bebidas">
            <div class="menu-content">
              <a href="#">JUGO SURTIDO 3</a><span>10.90</span>
            </div>
            <div class="menu-ingredients">
                 JUGO SURTIDO 1/2L DE PIÑA + FRESA + PLÁTANO + PAPAYA
            </div>
          </div> 
          <div class="col-lg-6 menu-item filter-ensaladas">
            <div class="menu-content">
              <a href="#">ENSALADA DELICIA DE PALTA</a><span>19.90</span>
            </div>
            <div class="menu-ingredients">
                 ENSALADA DELICIA DE PALTA
            </div>
          </div>
           <div class="col-lg-6 menu-item filter-ensaladas">
            <div class="menu-content">
              <a href="#">ENSALADA COCIDA</a><span>17.90</span>
            </div>
            <div class="menu-ingredients">
                 ENSALADA COCIDA
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-ensaladas">
            <div class="menu-content">
              <a href="#">ENSALADA DEL CHEF</a><span>21.90</span>
            </div>
            <div class="menu-ingredients">
                 MIXTURA DE LECHUGAS + TOMATE + JAMÓN + QUESO + FILETE DE PECHUGA EN TROZOS.
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-ensaladas">
            <div class="menu-content">
              <a href="#">ENSALADA CLASICA</a><span>12.90</span>
            </div>
            <div class="menu-ingredients">
                 ENSALADA CLASICA
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-starters">
            <div class="menu-content">
              <a href="#">1 POLLO + PAPA + ENSALADA</a><span>67.90</span>
            </div>
            <div class="menu-ingredients">
              1 POLLO + PAPA + ENSALADA CLASICA FAMILIAR + SALSAS
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-starters">
            <div class="menu-content">
              <a href="#">1/2 POLLO CLASICO</a><span>47.90</span>
            </div>
            <div class="menu-ingredients">
              1/2 POLLO + PAPA + CHAUFA DE POLLO + SALSAS
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-starters">
            <div class="menu-content">
              <a href="#">1/2 POLLO + PAPA + ENSALADA</a><span>39.90</span>
            </div>
            <div class="menu-ingredients">
              1/2 POLLO + PAPA + ENSALADA CLASICA MEDIANA + SALSAS
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-starters">
            <div class="menu-content">
              <a href="#">1/4 POLLO CLASICO</a><span>29.90</span>
            </div>
            <div class="menu-ingredients">
              1/4 POLLO + PAPA + CHAUFA DE POLLO + SALSAS
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-specialty">
            <div class="menu-content">
              <a href="#">CHAUFA CON CHANCHO Y FRANKFURTER</a><span>29.90</span>
            </div>
            <div class="menu-ingredients">
              CHAUFA DE CHANCHO BRASA CON SALCHICHA FRANKFURTER
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-starters">
            <div class="menu-content">
              <a href="#">POLLO CLASICO</a><span>74.90</span>
            </div>
            <div class="menu-ingredients">
              1 POLLO + PAPA + CHAUFA DE POLLO + SALSAS
            </div>
          </div>
           <div class="col-lg-6 menu-item filter-starters">
            <div class="menu-content">
              <a href="#">POLLO CLASICO</a><span>74.90</span>
            </div>
            <div class="menu-ingredients">
              1 POLLO + PAPA + CHAUFA DE POLLO + SALSAS
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-parrillas">
            <div class="menu-content">
              <a href="#">CHULETA A LA PARRILLA</a><span>35.90</span>
            </div>
            <div class="menu-ingredients">
              2 CHULETA 200 G + PAPA 300 G
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-parrillas">
            <div class="menu-content">
              <a href="#">PECHUGA DE POLLO A LA PARRILLA</a><span>26.90</span>
            </div>
            <div class="menu-ingredients">
              1 FILETE DE POLLO 250 G + PAPA 300 G
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-parrillas">
            <div class="menu-content">
              <a href="#">1/2 PARRILLA BRASA</a><span>82.90</span>
            </div>
            <div class="menu-ingredients">
              1 BIFE + 1 CHULETA + 1/2 POLLO + 1 CHORIZO + PAPA FRITAS + 1 FRANKFURTER + ENSALADA CLÁSICA CON PALTA + GRATIS 2 PIEZAS DE PAN CAMPESINO.
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-parrillas">
            <div class="menu-content">
              <a href="#">BIFE</a><span>40.90</span>
            </div>
            <div class="menu-ingredients">
              1 BIFE 250 G + PAPA 300 G
            </div>
          </div>
            
           <div class="col-lg-6 menu-item filter-parrillas">
            <div class="menu-content">
              <a href="#">PARRILLA PARA DOS</a><span>61.90</span>
            </div>
            <div class="menu-ingredients">
              1/2 POLLO A LA BRASA + PALITOS DE ANTICUCHO + 1 SALCHICHA + 1 CHORIZO + PANCITA + PAPAS FRITAS + ENSALADA CLÁSICA CON PALTA + GRATIS 2 PIEZAS DE PAN CAMPESINO
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-parrillas">
            <div class="menu-content">
              <a href="#">PARRILLA CLASICA</a><span>137.90</span>
            </div>
            <div class="menu-ingredients">
              2 BIFES + 2 CHULETAS + 2 PECHUGAS DE POLLO + 2 CHORIZOS + 2 FRANKFURTERS + PAPAS FRITAS + ENSALADA CLÁSICA CON PALTA + GRATIS 4 PIEZAS DE PAN CAMPESINO
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-parrillas">
            <div class="menu-content">
              <a href="#">1/2 PARRILLA CLASICA</a><span>84.90</span>
            </div>
            <div class="menu-ingredients">
              1 BIFE+ 1 CHULETA + 1 PECHUGA DE POLLO + 1 CHORIZO + 1 FRANKFURTER + PAPAS FRITAS + ENSALADA CLÁSICA CON PALTA + GRATIS 2 PIEZAS DE PAN CAMPESINO.
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-specialty">
            <div class="menu-content">
              <a href="#">LOMO SALTADO A LO POBRE</a><span>32.90</span>
            </div>
            <div class="menu-ingredients">
              LOMO SALTADO , 1 HUEVO FRITO,1 PLATANO FRITO
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-specialty">
            <div class="menu-content">
              <a href="#">POLLO SALTADO A LO POBRE</a><span>30.90</span>
            </div>
            <div class="menu-ingredients">
              POLLO SALTADO, 1 HUEVO FRITO, 1 PLATANO FRITO
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-specialty">
            <div class="menu-content">
              <a href="#">LOMO SALTADO</a><span>31.90</span>
            </div>
            <div class="menu-ingredients">
              LOMO SALTADO
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-specialty">
            <div class="menu-content">
              <a href="#">POLLO SALTADO</a><span>27.90</span>
            </div>
            <div class="menu-ingredients">
              POLLO SALTADO - PAPA AMARILLA
            </div>
          </div>
         <div class="col-lg-6 menu-item filter-specialty">
            <div class="menu-content">
              <a href="#">TALLARIN DE CARNE</a><span>31.90</span>
            </div>
            <div class="menu-ingredients">
              TALLARIN DE CARNE
            </div>
          </div>
          <div class="col-lg-6 menu-item filter-specialty">
            <div class="menu-content">
              <a href="#">CHAUFA DE CARNE</a><span>31.90</span>
            </div>
            <div class="menu-ingredients">
              CHAUFA DE CARNE
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Menu Section -->
    <!-- ======= Specials Section ======= -->
    <section id="specials" class="specials">
      <div class="container">

        <div class="section-title">
          <h2>PLATOS<span>ESPECIALES</span></h2>
          <p>Platos especiales </p>
        </div>

        <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">WING </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-2">2 PIEZAS BROASTER</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-3">COMBO BROASTER</a>
              </li>
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Promo Flash  Wings x 12</h3>
                    <p class="fst-italic">12 Alitas picantes + papas fritas</p>
                    
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/specials-1.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>2 PIEZAS BROASTER</h3>
                    <p class="fst-italic">2 PIEZAS BROASTER + PAPAS</p>
                                      </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/specials-2.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>COMBO BROASTER X 10</h3>
                    <p class="fst-italic">10 PIEZAS BROASTER + PORCIÓN DE PAPAS + GASEOSA</p>
                    
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/specials-3.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Specials Section -->
     <!-- ======= Chefs Section ======= -->
    <section id="chefs" class="chefs">
      <div class="container">

        <div class="section-title">
          <h2>NUESTROS<span> CHEFS</span></h2>
          <p>Contamos con los mejores cocineros</p>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="assets/img/chefs/chefs-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Walter White</h4>
                <span>Master Chef</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

         
          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="assets/img/chefs/chefs-3.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>William Anderson</h4>
                <span>Cook</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Chefs Section -->
    
   <section id="testimonials" class="testimonials">
      <div class="container position-relative">

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                <h3>Saul Goodman</h3>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    Una Atencio A1, se los recomiendo
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                <h3>Sara Wilsson</h3>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    Muy buena atencion. Se la reocmiendo
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                <h3>Jena Karlis</h3>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    Muy rico toda la comida 
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2><span></span>CONTACTANOS</h2>
          <p>Contactanos para cualquier tipo de eventos</p>
        </div>
      </div>


      <div class="container mt-5">

        <div class="info-wrap">
          <div class="row">
            <div class="col-lg-3 col-md-6 info">
              <i class="bi bi-geo-alt"></i>
              <h4>Ubicacion:</h4>
              <p> Gral. Varela 1150<br>Tacna 23001</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-clock"></i>
              <h4>HORARIO:</h4>
              <p>Lunes-Domingo:<br>9:00 AM - 23:00 PM</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-envelope"></i>
              <h4>Email:</h4>
              <p>kankas@gmail.com<br></p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-phone"></i>
              <h4>Call:</h4>
              <p>(052) 242245<br></p>
            </div>
          </div>
        </div>

        <form action="forms/contact.php" method="post" role="form" class="php-email-form">
          <div class="row">
            <div class="col-md-6 form-group">
              <input type="text" name="name" class="form-control" id="name" placeholder="Nombre" required>
            </div>
            <div class="col-md-6 form-group mt-3 mt-md-0">
              <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
            </div>
          </div>
          <div class="form-group mt-3">
            <input type="text" class="form-control" name="subject" id="subject" placeholder="Motivo" required>
          </div>
          <div class="form-group mt-3">
            <textarea class="form-control" name="message" rows="5" placeholder="Mensaje" required></textarea>
          </div>
          <div class="my-3">
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">Your message has been sent. Thank you!</div>
          </div>
          <div class="text-center"><button type="submit">Enviar</button></div>
        </form>

      </div>
    </section><!-- End Contact Section -->
  <%@ include file="footer/footer.jsp"%>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/js/main.js"></script>

</body>
</html>
<%--Fin Diego Andre Aranda Reyes--%>