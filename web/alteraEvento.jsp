<%-- 
    Document   : alteraEvento
    Created on : 08/11/2019, 22:29:39
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Alterar Evento</h1>

        <html:form action="alterarEvento" >
            <html:text readonly="true" name="AlterarEventoBean" property="idEvento"/>
            <html:text name="AlterarEventoBean" property="tipoEvento"/> 
            <html:text name="AlterarEventoBean" property="proprietario"/> 
            <html:text name="AlterarEventoBean" property="dataEvento"/>
            <html:submit value="Alterar"/>
        </html:form>
        <html:errors/>
    </body>
</html>
