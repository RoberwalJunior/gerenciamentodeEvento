/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.dao;

import gerenciamento.util.HibernateSession;
import gerenciamento.util.HibernateUtil;
import gerenciamento.vo.Usuario;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Roberwal Junior
 */
public class HibernateUsuarioDAO {
    public List<Usuario> retrieveAll() throws Exception {
       Session session = HibernateSession.getInstance().getSession();
        List<Usuario> usuario = session.createQuery("from Usuario").list();
        session.flush();
        return usuario;
    }
}
