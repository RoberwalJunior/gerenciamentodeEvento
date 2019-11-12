/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.action;

import gerenciamento.beans.InserirConvidadosBean;
import gerenciamento.dao.HibernateEventoDAO;
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
public class EncInserirConvidados extends org.apache.struts.action.Action {

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
        HibernateEventoDAO evento = new HibernateEventoDAO();
        List<Convidados> convidados = formBean.getConvidados();
        List<Evento> ev = formBean.getEventos(formBean.getIdEvento());
        Evento aux = new Evento();
        for (Evento e : ev) {
            if(e.getIdEvento().equals(formBean.getIdEvento())){
                aux = e;
            }
        }
        formBean.setNomeProprietario(aux.getProprietario());
        formBean.setEvento(aux);
        return mapping.findForward(SUCCESS);
    }
}
