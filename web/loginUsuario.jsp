
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <style>
            body{
                font-family: monospace;
            }
            body table{
                 font-size: 27px
            }
            bory h1{
                 font-size: 40px
            }
        </style>
    </head>
    <body>
        <h1 align="center">Gerenciamentos de Eventos</h1>
        <html:form action="loginUsuario">
            <table border="0" align="center">
                <tbody>
                    <tr>
                        <td>Login: </td>
                        <td><html:text name="LoginInserirEventoActionForm" property="login"/></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><html:password name="LoginInserirEventoActionForm" property="senha"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><html:submit value="Login" /></td>
                    </tr>
                </tbody>
            </table>    
        </html:form>
        <html:errors/>
    </body>
</html>
