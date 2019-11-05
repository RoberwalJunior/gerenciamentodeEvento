/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.dao;

import gerenciamento.util.HibernateUtil;
import gerenciamento.vo.Evento;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Roberwal Junior
 */
public class HibernateEventoDAO {
    public void create(Evento evento) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(evento);
        session.flush();
        transaction.commit();
        session.close();
    }
    
    public List<Evento> retrieveAll(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Evento> produtos = session.createQuery("from Evento where id_usuario =" + id).list();
        session.flush();
        session.close();
        return produtos;
    }
    
    public Evento retrieveById(int idEvento) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Evento evento = (Evento) session.createQuery("from Evento where id_evento=" + idEvento).uniqueResult();
        session.flush();
        session.close();
        return evento;
    }
    
    public void delete(Evento evento) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(evento);
        session.flush();
        transaction.commit();
        session.close();
    }
    
    public void update(Evento evento) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.update(evento);
        session.flush();
        transaction.commit();
        session.close();
    }
}
