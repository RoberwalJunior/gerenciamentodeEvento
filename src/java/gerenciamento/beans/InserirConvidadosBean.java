/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.beans;

import gerenciamento.dao.HibernateConvidadoDAO;
import gerenciamento.dao.HibernateEventoDAO;
import gerenciamento.vo.Convidados;
import gerenciamento.vo.Evento;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Roberwal Junior
 */
public class InserirConvidadosBean extends org.apache.struts.action.ActionForm {

    private Integer idConvidado;
    private Integer idUsuario;
    private Integer idEvento;
    private Evento evento;
    private String nome;
    private String cpf;
    private String levantamento;
    
    private String nomeEvento;

    public String getNomeEvento() {
        return nomeEvento;
    }

    public void setNomeEvento(String nomeEvento) {
        this.nomeEvento = nomeEvento;
    }

    
    
    private List<Convidados> convidados;

    /**
     *
     */
    public InserirConvidadosBean() {
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
        /*if (getName() == null || getName().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.name.required' key to your resources
        }*/
        return errors;
    }

    public Integer getIdConvidado() {
        return idConvidado;
    }

    public void setIdConvidado(Integer idConvidado) {
        this.idConvidado = idConvidado;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Evento getEvento() {//aqui
        return evento;
    }

    public void setEvento(Evento evento) {
        this.evento = evento;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getLevantamento() {
        return levantamento;
    }

    public void setLevantamento(String levantamento) {
        this.levantamento = levantamento;
    }

    public List<Evento> getEventos(int id) throws Exception {
        return new HibernateEventoDAO().retrieveAll(id);
    }

    public Integer getIdEvento() {
        return idEvento;
    }

    public void setIdEvento(Integer idEvento) {
        this.idEvento = idEvento;
    }

    public List<Convidados> getConvidados() throws Exception {
        return new HibernateConvidadoDAO().retrieveAllById(getIdEvento());
    }

    public void setConvidados(List<Convidados> convidados) {
        this.convidados = convidados;
    }
}
