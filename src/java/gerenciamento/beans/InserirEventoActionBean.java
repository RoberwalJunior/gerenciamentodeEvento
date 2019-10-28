/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.beans;

import gerenciamento.dao.HibernateEventoDAO;
import gerenciamento.vo.Evento;
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
public class InserirEventoActionBean extends org.apache.struts.action.ActionForm {
    
    private Integer idEvento;
    private Usuario usuario;
    private String tipoEvento;
    private String proprietario;
    private String dataEvento;
    private Set convidadoses = new HashSet(0);
    
    private List<Evento> eventos;

   
    
    
    /**
     *
     */
    public InserirEventoActionBean() {
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
        if (getTipoEvento()== null || getTipoEvento().equals("")) {
            errors.add("tipoEvento", new ActionMessage("error.tipoEvento.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getProprietario()== null || getProprietario().equals("")) {
            errors.add("proprietario", new ActionMessage("error.proprietario.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getDataEvento()== null || getDataEvento().equals("")) {
            errors.add("dataEvento", new ActionMessage("error.dataEvento.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }

    public Integer getIdEvento() {
        return idEvento;
    }

    public void setIdEvento(Integer idEvento) {
        this.idEvento = idEvento;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
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

    public Set getConvidadoses() {
        return convidadoses;
    }

    public void setConvidadoses(Set convidadoses) {
        this.convidadoses = convidadoses;
    }
    
    @Override
    public void reset(ActionMapping mapping, HttpServletRequest request) {
        tipoEvento = "";
        proprietario = "";
        dataEvento = "";
        eventos = null;
    }

    public List<Evento> getEventos() {
        return new HibernateEventoDAO().retrieveAll();
    }

    public void setEventos(List<Evento> eventos) {
        this.eventos = eventos;
    }
}
