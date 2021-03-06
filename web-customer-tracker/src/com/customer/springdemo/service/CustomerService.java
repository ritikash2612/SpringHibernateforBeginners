package com.customer.springdemo.service;

import java.util.List;

import com.customer.springdemo.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int custId);

	public void deleteCustomer(int custId);
}
