/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.dao;

import gerenciamento.util.HibernateSession;
import gerenciamento.util.HibernateUtil;
import gerenciamento.vo.Convidados;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Roberwal Junior
 */
public class HibernateConvidadoDAO {

    public void create(Convidados convidado) throws Exception{
        Session session = HibernateSession.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        session.save(convidado);
        session.flush();
        transaction.commit();

    }

    public List<Convidados> retrieveAll() throws Exception{
       Session session = HibernateSession.getInstance().getSession();
        List<Convidados> convidado = session.createQuery("from Convidados").list();
        session.flush();
        return convidado;
    }
    
    public List<Convidados> retrieveAllById(int idEvento) throws Exception{
       Session session = HibernateSession.getInstance().getSession();
        List<Convidados> convidado = session.createQuery("from Convidados where evento_id= " + idEvento).list();
        session.flush();
        return convidado;
    }

    public void delete(Convidados convidado) throws Exception{
        Session session = HibernateSession.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        session.delete(convidado);
        session.flush();
        transaction.commit();
    }

}
