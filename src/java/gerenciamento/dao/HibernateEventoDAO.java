/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.dao;

import gerenciamento.util.HibernateSession;
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
        Session session = HibernateSession.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        session.save(evento);
        session.flush();
        transaction.commit();
    }

    public List<Evento> retrieveAll(int id) {
        Session session = HibernateSession.getInstance().getSession();
        List<Evento> produtos = session.createQuery("from Evento where id_usuario =" + id).list();
        session.flush();
        return produtos;
    }

    public Evento retrieveById(int idEvento) {
        Session session = HibernateSession.getInstance().getSession();
        Evento evento = (Evento) session.createQuery("from Evento where id_evento=" + idEvento).uniqueResult();
        session.flush();
        return evento;
    }

    public void delete(Evento evento) {
        Session session = HibernateSession.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        session.delete(evento);
        session.flush();
        transaction.commit();
    }

    public void update(Evento evento) {
        Session session = HibernateSession.getInstance().getSession();
        Transaction transaction = session.beginTransaction();
        session.update(evento);
        session.flush();
        transaction.commit();
    }
}
