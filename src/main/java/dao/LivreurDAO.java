package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;


import util.HibernateUtil;
import model.Livreur;

public class LivreurDAO {

	private SessionFactory sessionFactory;

	public LivreurDAO() {
		sessionFactory = HibernateUtil.getSessionFactory();
	}

	public void create(Livreur u) {
		
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

	public Livreur findByLogin(String email) {
	    Session session = sessionFactory.openSession();
	    try {
	        Query<Livreur> query = session.createQuery("FROM Livreur WHERE email = :email", Livreur.class);
	        query.setParameter("email", email);
	        return query.uniqueResult(); 
	    } finally {
	        session.close();
	    }
	}


	public List<Livreur> findAll() {
		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from Livreur", Livreur.class).getResultList();
		} finally {
			session.close();
		}
	}
	
	public void update(Livreur Livreur) {
	    Session session = sessionFactory.openSession();
	    Transaction tx = null;
	    try {
	        tx = session.beginTransaction();
	        session.merge(Livreur); // Use merge instead of update
	        tx.commit();
	    } catch (Exception e) {
	        if (tx != null) tx.rollback();
	        throw e;
	    } finally {
	        session.close();
	    }
	}

}
