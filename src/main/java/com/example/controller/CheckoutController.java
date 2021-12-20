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
import com.example.model.Order;
import com.example.model.User;
import com.example.service.BillService;
import com.example.service.CartService;
import com.example.service.EmailService;
import com.example.service.PDFGenerationService;
import com.example.service.PaypalService;
import com.example.service.ProductService;
import com.example.service.SMSService;
import com.example.service.UserService;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;

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
	PaypalService paypalService;
	@Autowired
	BillService billService;
	
	public static final String SUCCESS_URL = "pay/success";
	public static final String CANCEL_URL = "pay/cancel";
	
	 @RequestMapping(value = { "/checkout" }, method = RequestMethod.POST )
	 public ModelAndView makePaymentAndCheckout(ModelAndView model) {
		 
		 String username;
		 	Object principal = SecurityContextHolder. getContext(). getAuthentication(). getPrincipal();
		 	if (principal instanceof UserDetails) {
		 		 username = ((UserDetails)principal). getUsername();
		 		} else {
		 		 username = principal. toString();
		 		}
		 	User user = userDAO.findByUsername(username).orElse(null);
	       

	        BillDTO bill = new BillDTO() ;
	        bill.setBilldate(java.time.LocalDate.now());
	        bill.setTotal(cartService.getTotalPrice(user));
	        bill.setUsername(username);
	        bill.setUserid(user.getUserid());
	        
	        System.out.println("ordermode id: " + bill.getBillid());
	        billDAO.save(bill);
	        billService.copyCartToOrders(user, bill);
	        PDFGenerationService pdfgen = new PDFGenerationService();
	        pdfgen.createPDF(bill, user);
	        cartDAO.deleteAllByUserId(user);
	        
	        model.setViewName("redirect:/ordersuccess");
	        try {

	           	 Order order = new Order(bill.getTotal(), "USD", "PayPal", "sale","Payment to springkart");
	          
	     			Payment payment = paypalService.createPayment((double)order.getPrice(), order.getCurrency(), order.getMethod(),
	     					order.getIntent(), order.getDescription(), "http://localhost:8080/" + CANCEL_URL,
	     					"http://localhost:8080/" + SUCCESS_URL);
	     			for(Links link:payment.getLinks()) {
	     				System.out.println("Link: " + link.getRel() + " : " + link.getHref());
	     				if(link.getRel().equals("approval_url")) {
	     					return new ModelAndView("redirect:"+link.getHref());
	     				}
	     			}
	     			
	     		} catch (PayPalRESTException e) {
	     		
	     			e.printStackTrace();
	     		}
	      
	        return model;
		 
	 }
	 @RequestMapping(value="/paymentSuccess")
		public String paymentSuccess() {
	        
	        return "redirect:/ordersuccess";
			
		}
	 
	
}
