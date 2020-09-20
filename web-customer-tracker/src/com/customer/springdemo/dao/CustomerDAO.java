package com.customer.springdemo.dao;

import java.util.List;

import com.customer.springdemo.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();
	
	public void saveCustomer(Customer customer);

	public Customer getCustomer(int custId);

	public void deleteCustomer(int custId);
	

}
