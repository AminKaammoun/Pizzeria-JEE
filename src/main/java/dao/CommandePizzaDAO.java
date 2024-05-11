package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import model.CommandePizza;
import util.HibernateUtil;

public class CommandePizzaDAO {
	private SessionFactory sessionFactory;

	public CommandePizzaDAO() {
		sessionFactory = HibernateUtil.getSessionFactory();
	}

	public void create(CommandePizza u) {
		
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

	public CommandePizza findById(int id) {
		Session session = sessionFactory.openSession();
		try {
			Query<CommandePizza> query = session.createQuery("FROM Commande WHERE id = :id", CommandePizza.class);
			query.setParameter("id", id);
			return query.uniqueResult();
		} finally {
			session.close();
		}
	}

	public List<CommandePizza> findAll() {
		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from Commande", CommandePizza.class).getResultList();
		} finally {
			session.close();
		}
	}
}
