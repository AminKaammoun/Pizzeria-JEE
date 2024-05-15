package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;


import util.HibernateUtil;
import model.Chef;

public class ChefDAO {

	private SessionFactory sessionFactory;

	public ChefDAO() {
		sessionFactory = HibernateUtil.getSessionFactory();
	}

	public void create(Chef u) {
		
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

	public Chef findByLogin(String email) {
	    Session session = sessionFactory.openSession();
	    try {
	        Query<Chef> query = session.createQuery("FROM Chef WHERE email = :email", Chef.class);
	        query.setParameter("email", email);
	        return query.uniqueResult(); 
	    } finally {
	        session.close();
	    }
	}


	public List<Chef> findAll() {
		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from Chef", Chef.class).getResultList();
		} finally {
			session.close();
		}
	}
	
	public void update(Chef Chef) {
	    Session session = sessionFactory.openSession();
	    Transaction tx = null;
	    try {
	        tx = session.beginTransaction();
	        session.merge(Chef); // Use merge instead of update
	        tx.commit();
	    } catch (Exception e) {
	        if (tx != null) tx.rollback();
	        throw e;
	    } finally {
	        session.close();
	    }
	}

}
