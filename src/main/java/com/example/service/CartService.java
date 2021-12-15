package com.example.service;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.CartDTO;
import com.example.model.User;
import com.example.dao.CartDAO;
import com.example.dao.UserDAO;

@Service
public class CartService {

	@Autowired
	private CartDAO cartDAO;


	public float getTotalPrice(User userModel) {
		Set<CartDTO> cartItems = cartDAO.findAllByUserId(userModel);
		float totalPrice = 0;
		for(CartDTO cartItem: cartItems) {
			totalPrice += cartItem.getProductid().getPrice()*cartItem.getQuantity();
		}
		return totalPrice;
	}
	
}
