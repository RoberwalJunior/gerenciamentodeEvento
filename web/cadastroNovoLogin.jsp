<%-- 
    Document   : cadastroNovoLogin
    Created on : 20/11/2019, 14:06:51
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
        <title>Novo Cadastro</title>

        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>
        <div class="limiter">
            <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
                <div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">

                    <html:form action="addNewLogin">
                        <html:link action="logoutLogin">Voltar</html:link>
                            <span class="login100-form-title p-b-53">
                                Novo Cadastro
                            </span>    
                            <div>
                                <div class="p-t-31 p-b-9">
                                    <span class="txt1">
                                        Username
                                    </span>
                                </div>
                                <div class="wrap-input100 validate-input" data-validate = "Username is required">
                                <html:text name="addNewLoginBean" styleClass="input100" property="login"/>
                                <span class="focus-input100"></span>
                            </div>
                            <div class="p-t-13 p-b-9">
                                <span class="txt1">
                                    Password
                                </span>
                            </div>
                            <div class="wrap-input100 validate-input" data-validate = "Password is required">
                                <html:password name="addNewLoginBean" styleClass="input100" property="senha"/>
                                <span class="focus-input100"></span>
                            </div>
                            <div class="p-t-13 p-b-9">
                                <span class="txt1">
                                    Confirm Password
                                </span>
                            </div>
                            <div class="wrap-input100 validate-input" data-validate = "Password is required">
                                <html:password name="addNewLoginBean" styleClass="input100" property="confSenha"/>
                                <span class="focus-input100"></span>
                            </div>
                            <div class="container-login100-form-btn m-t-17">
                                <html:submit styleClass="login100-form-btn" value="Sign Up"/>
                            </div>
                        </div>
                    </html:form>
                    <html:errors/>
                </div>
            </div>
        </div>


        <div id="dropDownSelect1"></div>

        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
