package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.BillDAO;
import com.example.dao.CartDAO;
import com.example.dao.UserDAO;
import com.example.model.BillDTO;
import com.example.model.BillService;
import com.example.model.User;
import com.example.service.CartService;
import com.example.service.EmailService;
import com.example.service.ProductService;
import com.example.service.UserService;

@Controller
public class CheckoutController {
	@Autowired
	ProductService productService;
	@Autowired
	UserService userService;
	@Autowired
	CartDAO cartDAO;
	@Autowired
	UserDAO userDAO;
	@Autowired
	CartService cartService;
	@Autowired
	BillDAO billDAO;
	
	@Autowired
	BillService billService;
	
	 @RequestMapping(value = { "/checkout" }, method = RequestMethod.POST )
	 public String makePaymentAndCheckout(ModelAndView model) {
		 
		 String username;
		 	Object principal = SecurityContextHolder. getContext(). getAuthentication(). getPrincipal();
		 	if (principal instanceof UserDetails) {
		 		 username = ((UserDetails)principal). getUsername();
		 		} else {
		 		 username = principal. toString();
		 		}
		 	User user = userDAO.findByUsername(username).orElse(null);
	       

	        BillDTO bill = new BillDTO() ;
//	        orderModel.setName(name);
//	        orderModel.setAddress(address);
//	        orderModel.setContactNumber(contactNo);
//	        orderModel.setPaymentType(paymentType);
//	        orderModel.setUserId(userModel.getEmail());
//	        orderModel.setTotalPrice(cartItemModelService.getTotalPrice(userModel));
//	        orderModel.setPaymentId("COD" + new Date().toString());
//	        orderModel.setStatus("ordered");
	        bill.setInvoice_date(java.time.LocalDate.now());
	        bill.setTotal(cartService.getTotalPrice(user));
	        bill.setUsername(username);
	        bill.setUserid(user.getUserid());
	        
	        System.out.println("ordermode id: " + bill.getBillid());
	        billDAO.save(bill);
	        billService.copyCartToOrders(user, bill);
	        
	        cartDAO.deleteAllByUserId(user);

	        EmailService emailService =new EmailService();
	        emailService.sendInvoice(user.getEmail(),"Order Confirmation and Invoice","SpringKart.pdf");
	       
	        return "redirect:/";
		 
	 }
	
}
