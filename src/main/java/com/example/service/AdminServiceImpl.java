package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.dao.AdminDAO;
import com.example.dao.UserDAO;
import com.example.model.AdminDTO;

@Component
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDAO adminDAO;

	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	public AdminDTO login(String username,String password) {
		System.out.println("inside admin login....");
		return adminDAO.findByUsernameAndPassword(username,password);
		
	}

	
}
