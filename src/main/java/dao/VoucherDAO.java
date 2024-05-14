package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import model.Voucher;
import util.HibernateUtil;
import model.Client;
import dao.ClientDAO;

public class VoucherDAO {
	private SessionFactory sessionFactory;

	public VoucherDAO() {
		sessionFactory = HibernateUtil.getSessionFactory();
	}

	public void create(Voucher u) {
		
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

	public Voucher findById(int id) {
		Session session = sessionFactory.openSession();
		try {
			Query<Voucher> query = session.createQuery("FROM Voucher WHERE id = :id", Voucher.class);
			query.setParameter("id", id);
			return query.uniqueResult();
		} finally {
			session.close();
		}
	}
	
	public List<Voucher> findAllByClient(String email) {
	    Session session = sessionFactory.openSession();
	    try {
	    	ClientDAO clientDAO = new ClientDAO();
	        Client client = clientDAO.findByLogin(email); // Retrieve Client object by ID
	        return session.createQuery("from Voucher where client = :client", Voucher.class)
	                      .setParameter("client", client)
	                      .getResultList();
	    } finally {
	        session.close();
	    }
	}
	

	public List<Voucher> findAll() {
		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from Voucher", Voucher.class).getResultList();
		} finally {
			session.close();
		}
	}
	
	public void update(Voucher voucher) {
	    Session session = sessionFactory.openSession();
	    Transaction tx = null;
	    try {
	        tx = session.beginTransaction();
	        session.merge(voucher); // Use merge instead of update
	        tx.commit();
	    } catch (Exception e) {
	        if (tx != null) tx.rollback();
	        throw e;
	    } finally {
	        session.close();
	    }
	}
	
	public void delete(Voucher voucher) {
	    Session session = sessionFactory.openSession();
	    Transaction tx = null;
	    try {
	        tx = session.beginTransaction();
	        session.remove(voucher); // Use remove to delete the object from the database
	        tx.commit();
	    } catch (Exception e) {
	        if (tx != null) tx.rollback();
	        throw e;
	    } finally {
	        session.close();
	    }
	} 



}
