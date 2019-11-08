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
public class AlterarEventoBean extends org.apache.struts.action.ActionForm {
    
    private Integer idEvento;
    private String tipoEvento;
    private String proprietario;
    private String dataEvento;

    /**
     *
     */
    public AlterarEventoBean() {
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

    public Integer getIdEvento() {
        return idEvento;
    }

    public void setIdEvento(Integer idEvento) {
        this.idEvento = idEvento;
    }
}
