package com.example.controller;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.model.BillDTO;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import com.example.service.BillService;
import com.example.service.PaypalService;

@Controller
public class PaypalController {

	@Autowired
	PaypalService service;
	
	@Autowired
	BillService orderModelService;
	
	 @GetMapping(value = "pay/cancel")
	    public String cancelPay() {
		 	
	        return "user/paymentFailed";
	    }

	    @GetMapping(value = "pay/success")
	    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId) {
	        try {
	            Payment payment = service.executePayment(paymentId, payerId);
	            if (payment.getState().equals("approved")) {
	                return "ordersuccess";
	            }
	        } catch (PayPalRESTException e) {
	         System.out.println(e.getMessage());
	        }
	        return "redirect:/";
	    }

}