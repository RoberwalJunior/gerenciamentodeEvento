/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.beans;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Roberwal Junior
 */
public class addNewLoginBean extends org.apache.struts.action.ActionForm {
    
    private String login;
    private String senha;
    private String confSenha;

    public String getConfSenha() {
        return confSenha;
    }

    public void setConfSenha(String confSenha) {
        this.confSenha = confSenha;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    /**
     *
     */
    public addNewLoginBean() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getLogin()== null || getLogin().equals("")) {
            errors.add("nome", new ActionMessage("error.nome.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getSenha()== null || getSenha().equals("")) {
            errors.add("senha", new ActionMessage("error.senha.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getConfSenha()== null || getConfSenha().equals("")) {
            errors.add("confSenha", new ActionMessage("error.confSenha.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (!getSenha().equals(getConfSenha())) {
            errors.add("difSenha", new ActionMessage("error.difSenha.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }
}
