package com.example.service;

import java.util.List;

import javax.persistence.PersistenceException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.dao.UserDAO;
import com.example.model.ProductDTO;
import com.example.model.User;

@Component
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public User register(User user) {
		try {
			return userDAO.save(user);
		} catch (PersistenceException e) {
			System.out.println(e.getMessage());
		} catch (Exception e) {
			Throwable t;
			for (t = e.getCause(); t.getCause() != null; t = t.getCause()) {
			}
			System.out.println(t.getMessage());
		}
		return null;
	}

	public User login(String username,String password) {
		return userDAO.findByUsernameAndPassword(username, password);
	}

	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		List<User> users = userDAO.findAll();
		return users;
		
	}
	public User add(User user) {
		try {
			return userDAO.save(user);
		} catch (PersistenceException e) {
			System.out.println(e.getMessage());
		} catch (Exception e) {
			Throwable t;
			for (t = e.getCause(); t.getCause() != null; t = t.getCause()) {
			}
			System.out.println(t.getMessage());
		}
		return null;
	}
	@Override
	public User getUserById(int userid) {
		User res = userDAO.getUserByid(userid);
		return res;
	}
	@Override
	public void deleteUserById(int userid) {
		userDAO.deleteByid(userid);
	}

}