package com.dao.inf;
import java.util.List;

import com.dto.Customer;
public interface customer_inf {
	void CustomerRegister(Customer c);
	void DeleteCustomer(Integer id);
	void UpdateProfile(Customer c);
	Customer searchbyId(Integer id);
	List<Customer> findAll();
	Customer findByMailPassword(String mail,String Password);

}
