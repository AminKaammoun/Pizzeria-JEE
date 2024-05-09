package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import model.Pizza;
import util.HibernateUtil;

public class PizzaDAO {
	private SessionFactory sessionFactory;

	public PizzaDAO() {
		sessionFactory = HibernateUtil.getSessionFactory();
	}

	public void create(Pizza u) {
		
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

	public Pizza findById(int id) {
		Session session = sessionFactory.openSession();
		try {
			Query<Pizza> query = session.createQuery("FROM Pizza WHERE id = :id", Pizza.class);
			query.setParameter("id", id);
			return query.uniqueResult();
		} finally {
			session.close();
		}
	}

	public List<Pizza> findAll() {
		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from Pizza", Pizza.class).getResultList();
		} finally {
			session.close();
		}
	}
}
