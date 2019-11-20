<%-- 
    Document   : gerenciamentoDeConvidados
    Created on : 25/10/2019, 17:56:29
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
        <title>Cadastro de convidados</title>
    </head>
    <body>
        
        <logic:notPresent name="InserirConvidadosBean">
            <logic:redirect action="inserirConvidados"/>
        </logic:notPresent>



        <html:link action="voltarEvento">Voltar</html:link>
        <h1>Gerenciamento de Convidados</h1>
        <h2>Evento: </h2><span><bean:write name="InserirConvidadosBean" property="nomeEvento"/></span>
        
        
        <h2>Listagem de convidados</h2>
        <table border="1">
            <tr>
                <th>ID do Covidado</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>O que vai levar</th>
            </tr>


            <logic:present name="InserirConvidadosBean">
                <logic:iterate name="InserirConvidadosBean" property="convidados" id="convidados">

                    <tr>
                        <td><bean:write name="convidados" property="idConvidado"/></td>
                        <td><bean:write name="convidados" property="nome"/></td>
                        <td><bean:write name="convidados" property="cpf"/></td>
                        <td><bean:write name="convidados" property="levantamento"/></td>
                        <td><html:link action="excluirConvidados" paramName="convidados" paramProperty="idConvidado" paramId="idConvidado">Exluir</html:link></td>
                    </tr>

                </logic:iterate>
            </logic:present>

        </table>
        
        
        <h2>Novo Convidado</h2>
        <html:form action="inserirConvidados">
            <table border="0">
                <tr>
                    <td>Nome do Convidado: </td>
                    <td><html:text name="InserirConvidadosBean" property="nome"/></td>
                </tr>
                <tr>
                    <td>CPF: </td>
                    <td><html:text name="InserirConvidadosBean" property="cpf"/></td>
                </tr>
                <tr>
                    <td>O que vai levar: </td>
                    <td><html:text name="InserirConvidadosBean" property="levantamento"/></td>
                </tr>
                <tr>
                    <td colspan="2"><html:submit value="Enviar"/></td>
                </tr>

            </table>
        </html:form>
        <html:errors/>
        
    </body>
</html>
