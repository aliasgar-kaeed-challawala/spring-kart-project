package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.UserDAO;
import com.example.model.User;
import com.example.service.BillService;
import com.example.service.EmailService;
import com.example.service.PaypalService;
import com.example.service.SMSService;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;

@Controller
public class PaypalController {

	@Autowired
	PaypalService service;
	
	@Autowired
	BillService orderModelService;
	
	@Autowired
	UserDAO userDAO;
	
	 @GetMapping(value = "pay/cancel")
	    public String cancelPay() {
		 	
	        return "orderfailure";
	    }

	    @GetMapping(value = "pay/success")
	    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId) {
	        try {
	        	String username;
			 	Object principal = SecurityContextHolder. getContext(). getAuthentication(). getPrincipal();
			 	if (principal instanceof UserDetails) {
			 		 username = ((UserDetails)principal). getUsername();
			 		} else {
			 		 username = principal. toString();
			 		}
			 	User user = userDAO.findByUsername(username).orElse(null);
	            Payment payment = service.executePayment(paymentId, payerId);
	            if (payment.getState().equals("approved")) {
	            	EmailService emailService =new EmailService();
 			        emailService.sendInvoice(user.getEmail(),"Order Confirmation and Invoice","d:/springkart_invoice.pdf");
 			        SMSService sms = new SMSService();
 			        sms.sendSMS(user.getPhoneNumber());
	                return "ordersuccess";
	            }
	        } catch (PayPalRESTException e) {
	         System.out.println(e.getMessage());
	        }
	        return "redirect:/";
	    }

}