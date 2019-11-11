/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.action;

import gerenciamento.beans.AlterarEventoBean;
import gerenciamento.dao.HibernateEventoDAO;
import gerenciamento.vo.Evento;
import gerenciamento.vo.Usuario;
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
public class AlterarEventoAction extends org.apache.struts.action.Action {

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
        AlterarEventoBean formBean = (AlterarEventoBean) form;
        Usuario usuario = new Usuario();
        List<Usuario> usuarios = formBean.getUsuarios();
        for (Usuario us :usuarios) {
            if(us.getId().equals(formBean.getIdUsuario())){
                usuario = us;
            }
        }
        Evento evento = new Evento(usuario, formBean.getIdEvento(), formBean.getTipoEvento(), formBean.getProprietario(), formBean.getDataEvento());
        HibernateEventoDAO aux = new HibernateEventoDAO();
        aux.update(evento);
        
        formBean.reset(mapping, request);
        return mapping.findForward(SUCCESS);
    }
}
