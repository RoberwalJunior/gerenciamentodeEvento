<%-- 
    Document   : gerenciamentoDeEventos
    Created on : 25/10/2019, 17:15:46
    Author     : Roberwal Junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gerenciamento de Eventos</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- favicons -->
        <link rel="apple-touch-icon" sizes="57x57" href="images/favicons/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="images/favicons/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="images/favicons/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="images/favicons/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="images/favicons/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="images/favicons/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="images/favicons/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="images/favicons/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="images/favicons/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="images/favicons/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicons/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="images/favicons/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicons/favicon-16x16.png">
        <link rel="manifest" href="/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        <!-- favicons -->
        <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/custom-responsive-style.css">
        <link href="//fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap" rel="stylesheet">
        <script type="text/javascript" src="script/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="script/all-plugins.js"></script>
        <script type="text/javascript" src="script/plugin-active.js"></script>
    </head>
    <body  data-spy="scroll" data-target=".main-navigation" data-offset="150">
        <section id="MainContainer">
            <!-- Header starts here -->
            <header id="Header">
                <nav class="main-navigation">
                    <div class="container clearfix">
                        <div class="site-logo-wrap">
                            <a class="logo" href="#">
                                <span style="font-family: 'Permanent Marker', cursive; font-size: 35px;">
                                    MWall Eventos
                                </span></a>
                        </div>
                        <a href="javascript:void(0)" class="menu-trigger hidden-lg-up"><span>&nbsp;</span></a>
                        <div class="main-menu hidden-md-down">
                            <ul class="menu-list">
                                <li><a class="nav-link" href="javascript:void(0)" data-target="#HeroBanner">Home</a></li>
                                <li><a class="nav-link" href="javascript:void(0)" data-target="#Services">Eventos</a></li>
                                <li><a class="nav-link" href="javascript:void(0)" data-target="#About">About</a></li>
                                <li><a class="nav-link" href="javascript:void(0)" data-target="#Portfolio">Portfolio</a></li>
                                <li><a class="nav-link" href="javascript:void(0)" data-target="#ContactUs">Contact</a></li>
                                <li><html:link action="logoutLogin" styleClass="nav-link">Logout</html:link></li>
                                </ul>
                            </div>
                        </div>
                        <div class="mobile-menu hidden-lg-up">
                            <ul class="mobile-menu-list">
                                <li><a class="nav-link" href="javascript:void(0)" data-target="#HeroBanner">Home</a></li>
                                <li><a class="nav-link" href="javascript:void(0)" data-target="#Services">Eventos</a></li>
                                <li><a class="nav-link" href="javascript:void(0)" data-target="#About">About</a></li>
                                <li><a class="nav-link" href="javascript:void(0)" data-target="#Portfolio">Portfolio</a></li>
                                <li><a class="nav-link" href="javascript:void(0)" data-target="#ContactUs">Contact</a></li>
                            </ul>
                        </div>
                    </nav>
                </header>
                <!-- Header ends here -->
                <!-- Banner starts here -->
                <section id="HeroBanner">
                    <div class="hero-content">
                    <logic:notPresent name="LoginInserirEventoActionForm">
                        <logic:redirect action="inserirEvento"/>
                    </logic:notPresent>
                    <h1>Bem - Vindo(a) <bean:write name="LoginInserirEventoActionForm" property="login"/>!</h1>
                    <p>Gerencie melhor seus eventos conosco!</p>
                    <a class="hero-cta nav-link" href="javascript:void(0)" data-target="#Services">Ver Lista de Eventos</a>
                </div>
            </section>
            <!-- Banner ends here -->
            <!-- Services section starts here -->
            <section id="Services">
                <div class="container">
                    <div class="block-heading ">
                        <h2>Listagem de eventos</h2>
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nome de Evento</th>
                                    <th>Proprietário</th>
                                    <th>Data do Evento</th>
                                </tr>                                
                            </thead>

                            <tbody>
                                <logic:present name="LoginInserirEventoActionForm">
                                    <logic:iterate name="LoginInserirEventoActionForm" property="eventos" id="evento">

                                        <tr>
                                            <td><bean:write name="evento" property="idEvento"/></td>
                                            <td><bean:write name="evento" property="tipoEvento"/></td>
                                            <td><bean:write name="evento" property="proprietario"/></td>
                                            <td><bean:write name="evento" property="dataEvento"/></td>
                                            <html:link action="encAlterarEvento" paramName="evento" paramProperty="idEvento" paramId="idEvento">Alterar</html:link>
                                            <html:link action="excluirEvento" paramName="evento" paramProperty="idEvento" paramId="idEvento">Exluir</html:link>
                                            <html:link action="encAddConvidados" paramName="evento" paramProperty="idEvento" paramId="idEvento">Adicionar convidados</html:link>
                                            </tr>

                                    </logic:iterate>
                                </logic:present>                                
                            </tbody>
                        </table>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                    </div>
                    <div class="services-wrapper">
                        <div class="each-service">
                            <div class="service-icon"><i class="fa fa-desktop" aria-hidden="true"></i></div>
                            <h5 class="service-title">LOREM IPSUM</h5>
                            <p class="service-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div>
                        <div class="each-service">
                            <div class="service-icon"><i class="fa fa-line-chart" aria-hidden="true"></i></div>
                            <h5 class="service-title">LOREM IPSUM</h5>
                            <p class="service-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div>
                        <div class="each-service">
                            <div class="service-icon"><i class="fa fa-paper-plane" aria-hidden="true"></i></div>
                            <h5 class="service-title">LOREM IPSUM</h5>
                            <p class="service-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div>
                        <div class="each-service">
                            <div class="service-icon"><i class="fa fa-university" aria-hidden="true"></i></div>
                            <h5 class="service-title">LOREM IPSUM</h5>
                            <p class="service-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div>
                        <div class="each-service">
                            <div class="service-icon"><i class="fa fa-camera-retro" aria-hidden="true"></i></div>
                            <h5 class="service-title">LOREM IPSUM</h5>
                            <p class="service-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div>
                        <div class="each-service">
                            <div class="service-icon"><i class="fa fa-shopping-bag" aria-hidden="true"></i></div>
                            <h5 class="service-title">LOREM IPSUM</h5>
                            <p class="service-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Services section ends here -->
            <!-- About Us section starts here -->
            <section id="About">
                <div class="container">
                    <div class="about-wrapper">
                        <h2>About Us</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                </div>
            </section>
            <!-- About Us section ends here -->
            <!-- Portfolio section starts here -->
            <section id="Portfolio">
                <div class="container">
                    <div class="block-heading">
                        <h2>Portfolio</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                    </div>
                    <div class="portfolio-wrapper clearfix">
                        <a class="each-portfolio" data-fancybox="gallery" href="images/p-one.jpg">
                            <img src="images/p-one.jpg" alt="p-one">
                            <div class="hover-cont-wrap">
                                <div class="hover-cont-block">
                                    <h5 class="p-title">Title</h5>
                                    <div class="p-desc">
                                        <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
                                        <div class="icon-div"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="each-portfolio" data-fancybox="gallery" href="images/p-two.jpg">
                            <img src="images/p-two.jpg" alt="p-one">
                            <div class="hover-cont-wrap">
                                <div class="hover-cont-block">
                                    <h5 class="p-title">Title</h5>
                                    <div class="p-desc">
                                        <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
                                        <div class="icon-div"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="each-portfolio" data-fancybox="gallery" href="images/p-three.jpg">
                            <img src="images/p-three.jpg" alt="p-one">
                            <div class="hover-cont-wrap">
                                <div class="hover-cont-block">
                                    <h5 class="p-title">Title</h5>
                                    <div class="p-desc">
                                        <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
                                        <div class="icon-div"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="each-portfolio" data-fancybox="gallery" href="images/p-four.jpg">
                            <img src="images/p-four.jpg" alt="p-one">
                            <div class="hover-cont-wrap">
                                <div class="hover-cont-block">
                                    <h5 class="p-title">Title</h5>
                                    <div class="p-desc">
                                        <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
                                        <div class="icon-div"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="each-portfolio" data-fancybox="gallery" href="images/p-five.jpg">
                            <img src="images/p-five.jpg" alt="p-one">
                            <div class="hover-cont-wrap">
                                <div class="hover-cont-block">
                                    <h5 class="p-title">Title</h5>
                                    <div class="p-desc">
                                        <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
                                        <div class="icon-div"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="each-portfolio" data-fancybox="gallery" href="images/p-six.jpg">
                            <img src="images/p-six.jpg" alt="p-one">
                            <div class="hover-cont-wrap">
                                <div class="hover-cont-block">
                                    <h5 class="p-title">Title</h5>
                                    <div class="p-desc">
                                        <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
                                        <div class="icon-div"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="each-portfolio" data-fancybox="gallery" href="images/p-one.jpg">
                            <img src="images/p-one.jpg" alt="p-one">
                            <div class="hover-cont-wrap">
                                <div class="hover-cont-block">
                                    <h5 class="p-title">Title</h5>
                                    <div class="p-desc">
                                        <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
                                        <div class="icon-div"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="each-portfolio" data-fancybox="gallery" href="images/p-two.jpg">
                            <img src="images/p-two.jpg" alt="p-one">
                            <div class="hover-cont-wrap">
                                <div class="hover-cont-block">
                                    <h5 class="p-title">Title</h5>
                                    <div class="p-desc">
                                        <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
                                        <div class="icon-div"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a class="each-portfolio" data-fancybox="gallery" href="images/p-three.jpg">
                            <img src="images/p-three.jpg" alt="p-one">
                            <div class="hover-cont-wrap">
                                <div class="hover-cont-block">
                                    <h5 class="p-title">Title</h5>
                                    <div class="p-desc">
                                        <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
                                        <div class="icon-div"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </section>
            <!-- Portfolio section ends here -->
            <section id="Testimonial">
                <div class="testimonial-wrap">
                    <div class="container">
                        <div class="block-heading">
                            <h2>What Clients Say About Us</h2>
                        </div>
                        <ul class="testimonial-slider">
                            <li>" I would like to thank Click and the team for the fantastic work<br> on content writing for my site. "</li>
                            <li>" I'd say that the team is excellent and it is some of the best service<br> I have received both online and offline in a long time. "</li>
                            <li>" It's been great working with you. The content is also great. I can certainly recommend your<br> services to others as cost effective services. "</li>
                        </ul>
                    </div>
                </div>
            </section>
            <!-- Contact us section starts here -->
            <section id="ContactUs">
                <div class="container contact-container">
                    <h3 class="contact-title">Get In Touch</h3>
                    <div class="contact-outer-wrapper">
                        <div class="address-block">
                            <p class="add-title">Contact Details</p>
                            <div class="c-detail">
                                <span class="c-icon"><i class="fa fa-map-marker" aria-hidden="true"></i></span> <span class="c-info">12 Avenue center, st. marks road, CA</span>
                            </div>
                            <div class="c-detail">
                                <span class="c-icon"><i class="fa fa-phone" aria-hidden="true"></i></span> <span class="c-info">+41982399090000</span>
                            </div>
                            <div class="c-detail">
                                <span class="c-icon"><i class="fa fa-envelope" aria-hidden="true"></i></span> <span class="c-info">click@gmail.com</span>
                            </div>
                        </div>
                        <div class="form-wrap">
                            <p class="add-title">Send Us Message</p>
                            <form>
                                <div class="fname floating-label">
                                    <input type="text" class="floating-input" name="full name" id="full-name-field" />
                                    <label for="full-name-field">Full Name</label>
                                </div>
                                <div class="email floating-label">
                                    <input type="email" class="floating-input" name="email" id="mail-field" />
                                    <label for="mail-field">Email</label>
                                </div>
                                <div class="contact floating-label">
                                    <input type="tel" class="floating-input" name="contact" id="contact-us-field" />
                                    <label for="contact-us-field">Contact</label>
                                </div>
                                <div class="company floating-label">
                                    <input type="text" class="floating-input" name="company" id="company-field" />
                                    <label for="company-field">Company</label>
                                </div>
                                <div class="user-msg floating-label">
                                    <textarea class="floating-input" name="user message" id="user-msg-field"></textarea>
                                    <label for="user-msg-field" class="msg-label">Your Message</label>
                                </div>
                                <div class="submit-btn">
                                    <button type="submit">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Contact us section ends here -->
            <!-- Footer section starts here -->
            <footer id="Footer">
                <div class="container">
                    <div class="social-share">
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="footer-logo-wrap">
                        Design Studio &copy; 2018. Designed by <a href="https://www.position2.com/">Position2</a>
                    </div>
                </div>
            </footer>
            <!-- Footer section ends here -->
        </section>










        <h1>Novo Evento</h1>

        <html:form action="inserirEvento">

            <table border="0">
                <tr>
                    <td>Nome de evento: </td>
                    <td><html:text name="LoginInserirEventoActionForm" property="tipoEvento"/></td>
                </tr>
                <tr>
                    <td>Proprietario: </td>
                    <td><html:text name="LoginInserirEventoActionForm" property="proprietario"/></td>
                </tr>
                <tr>
                    <td>Data do evento: </td>
                    <td><html:text name="LoginInserirEventoActionForm" property="dataEvento"/></td>
                </tr>
                <tr>
                    <td colspan="2"><html:submit value="Enviar"/></td>
                </tr>

            </table>

        </html:form>
        <html:errors/>

    </body>
</html>
