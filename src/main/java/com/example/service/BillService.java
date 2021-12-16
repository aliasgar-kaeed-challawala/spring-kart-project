package com.example.service;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.BillDTO;
import com.example.model.BillItem;
import com.example.model.CartDTO;
import com.example.model.User;
import com.example.dao.BillItemDAO;
import com.example.dao.CartDAO;
import com.example.dao.UserDAO;


@Service
public class BillService {

	@Autowired
	private CartDAO cartDAO;
	
	
	@Autowired
	private BillItemDAO billItemDAO;

	public boolean copyCartToOrders(User userModel, BillDTO billDTO) {
		Set<CartDTO> cartItems = cartDAO.findAllByUserId(userModel);
		
		for(CartDTO cartItem: cartItems) {
			BillItem billItem = new BillItem();
			
			billItem.setProductid(cartItem.getProductid());
			billItem.setBillId(billDTO);
			billItem.setPrice(cartItem.getProductid().getPrice());
			billItem.setQuantity(cartItem.getQuantity());
			billItem.setProductName(cartItem.getProductid().getProductname());
			
			billItemDAO.save(billItem);
		}
		
		return true;
	}
	
}

