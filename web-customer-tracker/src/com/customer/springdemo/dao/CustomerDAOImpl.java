package com.customer.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.customer.springdemo.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Customer> getCustomers() {

		// get the hibernate session
		Session session = sessionFactory.getCurrentSession();

		// create query
		Query<Customer> theQuery = session.createQuery("from Customer", Customer.class);
		List<Customer> customers = theQuery.getResultList();

		// get query result in a list
		return customers;
	}

	@Override
	public void saveCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
	}

	@Override
	public Customer getCustomer(int custId) {
		Session session = sessionFactory.getCurrentSession();
		Customer customer = session.get(Customer.class, custId);
		return customer;
	}

	@Override
	public void deleteCustomer(int custId) {
		Session session = sessionFactory.getCurrentSession();
		Query theQuery = session.createQuery("delete from Customer where id =:customerId");
		theQuery.setParameter("customerId", custId);
		theQuery.executeUpdate();
	}

}
