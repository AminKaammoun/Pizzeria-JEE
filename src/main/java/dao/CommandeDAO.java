package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import model.Client;
import model.Commande;
import model.Voucher;
import util.HibernateUtil;

public class CommandeDAO {

	private SessionFactory sessionFactory;

	public CommandeDAO() {
		sessionFactory = HibernateUtil.getSessionFactory();
	}


	public void create(Commande u) {
		
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

	public Commande findById(int id) {
		Session session = sessionFactory.openSession();
		try {
			Query<Commande> query = session.createQuery("FROM Commande WHERE id = :id", Commande.class);
			query.setParameter("id", id);
			return query.uniqueResult();
		} finally {
			session.close();
		}
	}
	
	
	public List<Commande> findAllByClient(String email) {
	    Session session = sessionFactory.openSession();
	    try {
	    	ClientDAO clientDAO = new ClientDAO();
	        Client client = clientDAO.findByLogin(email); // Retrieve Client object by ID
	        return session.createQuery("from Commande where client = :client", Commande.class)
	                      .setParameter("client", client)
	                      .getResultList();
	    } finally {
	        session.close();
	    }
	}

	public List<Commande> findAll() {
		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from Commande", Commande.class).getResultList();
		} finally {
			session.close();
		}
	}
}
