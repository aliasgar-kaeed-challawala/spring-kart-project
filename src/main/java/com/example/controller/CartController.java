package com.example.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.BillDAO;
import com.example.dao.BillItemDAO;
import com.example.dao.CartDAO;
import com.example.dao.UserDAO;
import com.example.model.BillDTO;
import com.example.model.BillItem;
import com.example.model.CartDTO;
import com.example.model.ProductDTO;
import com.example.model.User;
import com.example.service.ProductService;
import com.example.service.UserService;

@Controller
public class CartController {
	@Autowired
	ProductService productService;
	@Autowired
	UserService userService;
	@Autowired
	CartDAO cartDAO;
	@Autowired
	UserDAO userDAO;
	@Autowired
	BillDAO billDAO;
	@Autowired
	BillItemDAO billitemDAO;
	
	
		 @RequestMapping(value = "/addtocart",method = RequestMethod.POST)
		    public String addToCart(@RequestParam("productid") int productid,ModelMap model,HttpSession session,HttpServletRequest request){
//		       GlobalData.cart.add(productService.getProductById(productid));
//		        User user = userService.extractUserModel(request);
			 	
			 	String username;
			 	Object principal = SecurityContextHolder. getContext(). getAuthentication(). getPrincipal();
			 	if (principal instanceof UserDetails) {
			 		 username = ((UserDetails)principal). getUsername();
			 		} else {
			 		 username = principal. toString();
			 		}
			 	User user = userDAO.findByUsername(username).orElse(null);
				int quantity = Integer.parseInt(request.getParameter("quantity"));        				
				ProductDTO product = productService.getProductById(productid);				
				Set<CartDTO>  cartItems = cartDAO.findAllByUserId(user);								
				for(CartDTO c: cartItems) {					
					if(c.getProductid().equals(product)) {						
						c.setQuantity(quantity+c.getQuantity());
						c.setTotal(quantity*product.getPrice());
						cartDAO.save(c);						
						return "redirect:/user/productsbycategory?category="+productService.getProductById(productid).getCategory();
					}
				}
				CartDTO cartItemModel = new CartDTO();
				cartItemModel.setUserId(user);				
				cartItemModel.setProductid(product);
				cartItemModel.setQuantity(quantity);
				cartItemModel.setTotal(quantity*product.getPrice());
				

				cartDAO.save(cartItemModel);
				
	       return "redirect:/user/productsbycategory?category="+productService.getProductById(productid).getCategory();
	    }
	 @RequestMapping(value = { "/cart" }, method = RequestMethod.GET)
	 public ModelAndView getCartItems(ModelAndView model, HttpServletRequest request) {
		 String username;
		 	Object principal = SecurityContextHolder. getContext(). getAuthentication(). getPrincipal();
		 	if (principal instanceof UserDetails) {
		 		 username = ((UserDetails)principal). getUsername();
		 		} else {
		 		 username = principal. toString();
		 		}
		 	User user = userDAO.findByUsername(username).orElse(null);	        
	        Set<CartDTO> cartItemModels = cartDAO.findAllByUserId(user);
	        float total = 0;
	        for(CartDTO cartItemModel: cartItemModels) {
	        	total+=cartItemModel.getQuantity()*cartItemModel.getProductid().getPrice();
				cartDAO.save(cartItemModel);
			}	        
	        model.addObject("tot",total);
			model.addObject("cartItems", cartItemModels);
			model.addObject("title", "Your Cart");
			model.setViewName("cart");
			return model; 
		}
		
	 @RequestMapping(value= {"/removecartitem"}, method=RequestMethod.GET)
	 public String removeFromCart(@RequestParam("cartItemId") int cartItemId) {
		 cartDAO.deleteById(cartItemId);
		 return "redirect:/cart";
	 }
	 
	 
	 @RequestMapping(value="/myorders",method = RequestMethod.GET)
	 public ModelAndView getUserOrders(ModelAndView model, HttpServletRequest request) {
	        
		 String username;
		 	Object principal = SecurityContextHolder. getContext(). getAuthentication(). getPrincipal();
		 	if (principal instanceof UserDetails) {
		 		 username = ((UserDetails)principal). getUsername();
		 		} else {
		 		 username = principal. toString();
		 		}
		 	User user = userDAO.findByUsername(username).orElse(null);	
	        Set<BillDTO> bills = billDAO.findAllByUserid(user.getUserid());
	        
	        
	        model.addObject("bills", bills);
	        
	        model.addObject("title", "Orders");
	        model.setViewName("myorders");
	        return model;
			
		}
	
}
