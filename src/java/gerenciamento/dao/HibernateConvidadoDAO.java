/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.dao;

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

    public void create(Convidados convidado) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(convidado);
        session.flush();
        transaction.commit();
        session.close();
    }

    public List<Convidados> retrieveAll() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Convidados> convidado = session.createQuery("from Convidados").list();
        session.flush();
        session.close();
        return convidado;
    }

    public void delete(Convidados convidado) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(convidado);
        session.flush();
        transaction.commit();
        session.close();
    }

}
