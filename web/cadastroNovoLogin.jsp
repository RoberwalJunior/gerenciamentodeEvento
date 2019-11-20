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
    </head>
    <body>
        <html:link action="logoutLogin">Voltar</html:link>
        <h1>Novo Cadastro</h1>
        
        <html:form action="addNewLogin">
            
            <div>
                Login: <html:text name="addNewLoginBean" property="login"/><br>
                Senha: <html:text name="addNewLoginBean" property="senha"/><br>
                Confirmar Senha: <html:text name="addNewLoginBean" property="confSenha"/><br>
                <html:submit value="Cadastrar"/>
            </div>
            
        </html:form>
        <html:errors/>
        
    </body>
</html>
