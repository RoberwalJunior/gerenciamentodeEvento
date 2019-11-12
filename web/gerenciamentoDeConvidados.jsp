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




        <h1>Gerenciamento de Convidados</h1>
        Proprietário do evento: <bean:write name="InserirConvidadosBean" property="proprietario"/>
        
        
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
        
    </body>
</html>
