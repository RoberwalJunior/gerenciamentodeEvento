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

        <logic:notPresent name="LoginInserirEventoActionForm">
            <logic:redirect action="inserirEvento"/>
        </logic:notPresent>




        <h1>Gerenciamento de eventos</h1>
        <h2>Listagem de evntos</h2>
        <table border="1">
            <tr>
                <th>ID do Evento</th>
                <th>Tipo de Evento</th>
                <th>Proprietário</th>
                <th>Data do Evento</th>
            </tr>


            <logic:present name="LoginInserirEventoActionForm">
                <logic:iterate name="LoginInserirEventoActionForm" property="eventos" id="evento">

                    <tr>
                        <td><bean:write name="evento" property="idEvento"/></td>
                        <td><bean:write name="evento" property="tipoEvento"/></td>
                        <td><bean:write name="evento" property="proprietario"/></td>
                        <td><bean:write name="evento" property="dataEvento"/></td>
                        <td><html:link action="encAlterarEvento" paramName="evento" paramProperty="idEvento" paramId="idEvento">Alterar</html:link></td>
                        <td><html:link action="excluirEvento" paramName="evento" paramProperty="idEvento" paramId="idEvento">Exluir</html:link></td>
                        <td><html:link action="">Adicionar convidados</html:link></td>
                    </tr>

                </logic:iterate>
            </logic:present>

        </table>




        <h1>Novo Evento</h1>

        <html:form action="inserirEvento">

            <table border="0">
                <tr>
                    <td>Tipo de evento: </td>
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
