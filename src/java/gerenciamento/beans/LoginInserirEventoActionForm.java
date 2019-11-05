/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.beans;

import gerenciamento.dao.HibernateEventoDAO;
import gerenciamento.dao.HibernateUsuarioDAO;
import gerenciamento.vo.Evento;
import gerenciamento.vo.Usuario;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Roberwal Junior
 */
public class LoginInserirEventoActionForm extends org.apache.struts.action.ActionForm {
    
    private Integer idEvento;
    private String tipoEvento;
    private String proprietario;
    private String dataEvento;
    private List<Evento> eventos;
    
    private Integer idUsuario;
    private String login;
    private String senha;
    private List<Usuario> usuarios;

    
    @Override
    public void reset(ActionMapping mapping, HttpServletRequest request) {
        tipoEvento = "";
        proprietario = "";
        dataEvento = "";
        eventos = null;
        login = "";
        senha = "";
    }
    
    /**
     *
     */
    public LoginInserirEventoActionForm() {
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
        //if (getName() == null || getName().length() < 1) {
        //    errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.name.required' key to your resources
        //}
        return errors;
    }

    public Integer getIdEvento() {
        return idEvento;
    }

    public void setIdEvento(Integer idEvento) {
        this.idEvento = idEvento;
    }

    public String getTipoEvento() {
        return tipoEvento;
    }

    public void setTipoEvento(String tipoEvento) {
        this.tipoEvento = tipoEvento;
    }

    public String getProprietario() {
        return proprietario;
    }

    public void setProprietario(String proprietario) {
        this.proprietario = proprietario;
    }

    public String getDataEvento() {
        return dataEvento;
    }

    public void setDataEvento(String dataEvento) {
        this.dataEvento = dataEvento;
    }

    public List<Evento> getEventos() {
        return new HibernateEventoDAO().retrieveAll(getIdUsuario());
    }

    public void setEventos(List<Evento> eventos) {
        this.eventos = eventos;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
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

    public List<Usuario> getUsuarios() throws Exception {
        return new HibernateUsuarioDAO().retrieveAll();
    }

    public void setUsuarios(List<Usuario> usuarios) {
        this.usuarios = usuarios;
    }
    
    
}
