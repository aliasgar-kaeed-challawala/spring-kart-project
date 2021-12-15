package com.example.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.dao.UserDAO;
import com.example.model.ProductDTO;
import com.example.model.User;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.persistence.PersistenceException;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.dao.UserDAO;
import com.example.model.User;

@Component("us")
public interface UserService {

	public User login(String username,String password);
	public User register(User user);
	public List<User> getAllUsers(); 
	public User add(User user);
//	public UserDTO getuserById(int userid);
	public void deleteUserById(int userid);
	public User getUserById(int userid);
	public User extractUserModel(HttpServletRequest request);
}