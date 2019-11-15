/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gerenciamento.util;

import org.hibernate.Session;

/**
 *
 * @author Roberwal Junior
 */
public class HibernateSession {

    private static HibernateSession instance = null;
    private Session session;

    private HibernateSession() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public static HibernateSession getInstance() {
        if (instance == null) {
            instance = new HibernateSession();
        }
        return instance;
    }

    public Session getSession() {
        return session;
    }

    @Override
    protected void finalize() throws Throwable {
        session.close();
    }

}
