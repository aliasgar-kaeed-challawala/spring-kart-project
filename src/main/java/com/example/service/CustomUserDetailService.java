package com.example.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.dao.UserDAO;
import com.example.model.CustomUserDetail;
import com.example.model.User;

@Component
public class CustomUserDetailService implements UserDetailsService{
	@Autowired
	UserDAO userDAO;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
		Optional<User> user = userDAO.findByUsername(username);
		user.orElseThrow(()-> new UsernameNotFoundException("User not found"));
		return user.map(CustomUserDetail::new).get();
	}
}
