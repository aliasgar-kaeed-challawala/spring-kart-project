package com.example.controller;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

//import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.model.AdminDTO;
import com.example.model.ProductDTO;
import com.example.model.User;
import com.example.service.ProductService;
import com.example.service.UserService;



@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String getHome() {
		return "welcome";
	}
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String getLogin() {
		return "login";
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.POST)
	public String postLogin(@RequestParam("username") String username, @RequestParam("password") String password,HttpSession session) {
		// TODO: User authentication
//		if(session.getAttribute("admin")==null) {
//		User userDTO = userService.login(username, password);
//		session.setAttribute("user", userDTO);
//		session.setAttribute("role", userDTO.getUsername());
		User u = userService.login(username, password);
	
		if (u != null) {
			return "welcome";
		}
		return "login";
//	}
//		else {
//			session.invalidate();
//			return "login";
//		}
	}
	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public String getRegister(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		return "index";
	}

	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	public String postRegister(User user, BindingResult result) {

		User u = userService.register(user);
		System.out.println(u);
		return "welcome";
	}
	 @RequestMapping(value = {"/productsbycategory" }, method = RequestMethod.GET)
	    public String listProducts(@RequestParam("category") String category,ModelMap model,HttpSession session) {
//		 if(session.getAttribute("user")==null) {
	            
//		 		return "redirect:/user/login";
//		 	}
	        List<ProductDTO> products = productService.getProductsByCategory(category);
	        System.out.println(category);
	        model.addAttribute("products", products);
	        System.out.println(products);
//	        System.out.println(session.getAttribute());
	        return "products";
	    }
}