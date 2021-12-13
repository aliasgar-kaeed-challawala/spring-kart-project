package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.dao.RoleDAO;
import com.example.dao.UserDAO;
import com.example.model.Role;
import com.example.model.User;
import com.example.service.UserService;

@Controller
public class LoginController {
	
	@Autowired 
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	UserService userService;
	
	@Autowired
	RoleDAO roleDAO;
	
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String getLogin() {
		return "login";
	}
	
	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public String getRegister(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		return "index";
	}
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	public String postRegister(User user, BindingResult result,HttpServletRequest request) throws ServletException{
		String password = user.getPassword();
		user.setPassword(bCryptPasswordEncoder.encode(password));
		List<Role> roles = new ArrayList<>();
		roles.add(roleDAO.findById(2).get());
		user.setRoles(roles);
		User u = userService.register(user);
		System.out.println(u);
		request.login(user.getUsername(),password);
		return "redirect:/welcome";
	}
	
	
}
