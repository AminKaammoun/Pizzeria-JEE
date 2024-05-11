package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import model.Client;
import model.User;
import util.HibernateUtil;

public class ClientDAO {

	private SessionFactory sessionFactory;

	public ClientDAO() {
		sessionFactory = HibernateUtil.getSessionFactory();
	}

	public void create(Client u) {
		
    	Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.persist(u);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            throw e;
        } finally {
            session.close();
        }
    
    }

	public Client findByLogin(String email) {
	    Session session = sessionFactory.openSession();
	    try {
	        Query<Client> query = session.createQuery("FROM Client WHERE email = :email", Client.class);
	        query.setParameter("email", email);
	        return query.uniqueResult(); 
	    } finally {
	        session.close();
	    }
	}


	public List<Client> findAll() {
		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from Client", Client.class).getResultList();
		} finally {
			session.close();
		}
	}
	
	public void update(Client client) {
	    Session session = sessionFactory.openSession();
	    Transaction tx = null;
	    try {
	        tx = session.beginTransaction();
	        session.merge(client); // Use merge instead of update
	        tx.commit();
	    } catch (Exception e) {
	        if (tx != null) tx.rollback();
	        throw e;
	    } finally {
	        session.close();
	    }
	}

}
