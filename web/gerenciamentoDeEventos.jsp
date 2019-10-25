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
    </head>
    <body>
        <h1>Bem vindo de volta <bean:write name="LoginUsuarioActionForm" property="login"/>!</h1>

        <h1>Novo Evento</h1>

        <html:form action="inserirEvento">

            <table border="0">
                <tr>
                    <td>Tipo de evento: </td>
                    <td><html:text name="InserirEventoActionBean" property="tipoEvento"/></td>
                </tr>
                <tr>
                    <td>Proprietario: </td>
                    <td><html:text name="InserirEventoActionBean" property="proprietario"/></td>
                </tr>
                <tr>
                    <td>Data do evento: </td>
                    <td><html:text name="InserirEventoActionBean" property="dataEvento"/></td>
                </tr>
                <tr>
                    <td colspan="2"><html:submit value="Enviar" /></td>
                </tr>

            </table>

        </html:form>
        <html:errors/>

    </body>
</html>
