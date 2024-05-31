package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;


import util.HibernateUtil;
import model.Admin;

public class AdminDAO {

	private SessionFactory sessionFactory;

	public AdminDAO() {
		sessionFactory = HibernateUtil.getSessionFactory();
	}

	public void create(Admin u) {
		
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

	public Admin findByLogin(String email) {
	    Session session = sessionFactory.openSession();
	    try {
	        Query<Admin> query = session.createQuery("FROM Admin WHERE email = :email", Admin.class);
	        query.setParameter("email", email);
	        return query.uniqueResult(); 
	    } finally {
	        session.close();
	    }
	}


	public List<Admin> findAll() {
		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from Admin", Admin.class).getResultList();
		} finally {
			session.close();
		}
	}
	
	public void update(Admin Admin) {
	    Session session = sessionFactory.openSession();
	    Transaction tx = null;
	    try {
	        tx = session.beginTransaction();
	        session.merge(Admin); // Use merge instead of update
	        tx.commit();
	    } catch (Exception e) {
	        if (tx != null) tx.rollback();
	        throw e;
	    } finally {
	        session.close();
	    }
	}

}
