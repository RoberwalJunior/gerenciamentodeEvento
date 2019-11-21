/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.action;

import gerenciamento.beans.InserirConvidadosBean;
import gerenciamento.dao.HibernateConvidadoDAO;
import gerenciamento.vo.Convidados;
import gerenciamento.vo.Evento;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Roberwal Junior
 */
public class addConvidadosAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        InserirConvidadosBean formBean = (InserirConvidadosBean) form;
        Evento evento = new Evento();
        List<Evento> eventos = formBean.getEventos(formBean.getIdEvento());
        for (Evento ev : eventos) {
            if(ev.getIdEvento().equals(formBean.getIdEvento())){
                evento = ev;
            }
        }
        
        Convidados convidados = new Convidados(evento, formBean.getNome(), formBean.getCpf(), formBean.getLevantamento());
        HibernateConvidadoDAO aux = new HibernateConvidadoDAO();
        aux.create(convidados);
        return mapping.findForward(SUCCESS);
    }
}
