/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.beans;

import gerenciamento.dao.HibernateUsuarioDAO;
import gerenciamento.vo.Usuario;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Roberwal Junior
 */
public class LoginUsuarioActionForm extends org.apache.struts.action.ActionForm {
    
    private Integer id;
    private String login;
    private String senha;
    private Set eventos = new HashSet(0);
    private List<Usuario> usuarios;
    
    /**
     *
     */
    public LoginUsuarioActionForm() {
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
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getLogin()== null || getLogin().equals("")) {
            errors.add("login", new ActionMessage("error.login.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getSenha()== null || getSenha().equals("")) {
            errors.add("senha", new ActionMessage("error.senha.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Set getEventos() {
        return eventos;
    }

    public void setEventos(Set eventos) {
        this.eventos = eventos;
    }

    public List<Usuario> getUsuarios() throws Exception {
        return new HibernateUsuarioDAO().retrieveAll();
    }

    public void setUsuarios(List<Usuario> usuarios) {
        this.usuarios = usuarios;
    }
    
    @Override
    public void reset(ActionMapping mapping, HttpServletRequest request) {
        login = "";
        senha = "";
    }
}
