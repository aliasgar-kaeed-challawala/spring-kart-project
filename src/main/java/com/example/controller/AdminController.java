package com.example.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

//import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.BillDAO;
import com.example.model.AdminDTO;
import com.example.model.BillDTO;
import com.example.model.ProductDTO;
import com.example.model.User;
import com.example.service.AdminService;
import com.example.service.ProductService;
import com.example.service.UserService;





@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@Autowired 
	ProductService productService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	BillDAO billDAO;

	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String getLogin() {
		return "adminlogin";
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.POST)
	public String postLogin(@RequestParam("username") String username, HttpSession session,@RequestParam("password") String password) {
		// TODO: User authentication
//		if(session.getAttribute("user")==null) {
		AdminDTO adminDTO = adminService.login(username, password);
//		session.setAttribute("admin", adminDTO);
//		session.setAttribute("role", adminDTO.getUsername());
		AdminDTO a = adminService.login(username, password);
		if (a != null) {
			return "adminhome";
		}
		return "adminlogin";
//		}
//		else {
//			session.invalidate();
//			return "adminlogin";
//		}
	}
	 @RequestMapping(value = {"/list","/productsadmin" }, method = RequestMethod.GET)
	    public String listProducts(ModelMap model,HttpSession session) {
//		 	if(session.getAttribute("admin")==null && session.getAttribute("role")!="admin") {
//	            
//		 		return "redirect:/admin/login";
//		 	}
	        List<ProductDTO> products = productService.getAllProducts();
	        model.addAttribute("products", products);
	        return "productsadmin";
	    }
	 @RequestMapping(value = { "/addproduct" }, method = RequestMethod.GET)
		public String getRegister(ModelMap model,HttpSession session) {
//		 if(session.getAttribute("admin")==null) {
//			 return "redirect:/admin/login";
//		 	}
			ProductDTO product = new ProductDTO();
			model.addAttribute("product", product);
			return "addproduct";
		}

		@RequestMapping(value = { "/addproduct" }, method = RequestMethod.POST)
		public String postRegister(ProductDTO product, BindingResult result,HttpSession session) {
//			if(session.getAttribute("admin")==null) {
//				return "redirect:/admin/login";
//		 	}
			ProductDTO p = productService.add(product);
			System.out.println(p);
			return "redirect:/admin/productsadmin";
		}
		
		 @RequestMapping(value = { "/editproduct" }, method = RequestMethod.GET)
		    public String getEditProduct(@RequestParam("productid")int productid, ModelMap model,HttpSession session) {
//			 if(session.getAttribute("admin")==null) {
//				 return "redirect:/admin/login";
//			 	}
		        ProductDTO product = productService.getProductById(productid);
		        System.out.println(product);
		        System.out.println(productid);
		        model.addAttribute("product", product);
		        return "addproduct";
		    }
		 @RequestMapping(value = { "/editproduct" }, method = RequestMethod.POST)
		    public String postEditProduct(@RequestParam("productid") int productid ,ProductDTO product,HttpSession session ,ModelMap model) {
//			 if(session.getAttribute("admin")==null) {
//				 return "redirect:/admin/login";
//			 	}
			 	ProductDTO p  = productService.add(product);
				System.out.println(p);
				if (p != null) {
					return "redirect:/admin/list";
				}
		        return "addproduct";
		    }
		 @RequestMapping(value = { "/deleteproduct-{productid}-product" }, method = RequestMethod.GET)
		    public String deleteProduct(@PathVariable int productid,HttpSession session) {
//			 if(session.getAttribute("admin")==null) {
//				 return "redirect:/admin/login";
//			 	}
		        productService.deleteProductById(productid);
		        return "redirect:/admin/productsadmin";
		    }
		 @RequestMapping(value = {"/ordersadmin" }, method = RequestMethod.GET)
		    public String listOrders(ModelMap model,HttpSession session) {
		        List<BillDTO> bills = billDAO.findAll();
		        model.addAttribute("bills", bills);
		        return "ordersadmin";
		    }
		 @RequestMapping(value = { "/addorder" }, method = RequestMethod.GET)
			public String getOrer(ModelMap model) {
				BillDTO bill = new BillDTO();
				model.addAttribute("bill", bill);
				return "addorder";
			}

			@RequestMapping(value = { "/addorder" }, method = RequestMethod.POST)
			public String postOrder(BillDTO bill, BindingResult result) {

				BillDTO b = billDAO.save(bill);
				System.out.println(b);
				return "redirect:/admin/ordersadmin";
			}
//			 @RequestMapping(value = { "/editorder" }, method = RequestMethod.GET)
//			    public String getEditOrder(@RequestParam("billid") int billid, ModelMap model) {
//				 	System.out.println("inside edit...............");
//			        BillDTO bill = billDAO.getById(billid);
//			        System.out.println(bill);
//			        model.addAttribute("bill", bill);
//			        return "addorder";
//			    }
//			 @RequestMapping(value = { "/editorder" }, method = RequestMethod.POST)
//			    public String postEditMovie(@RequestParam("billid") int billid ,BillDTO bill, ModelMap model) {
//			    	BillDTO b  = billDAO.save(bill);
//					
//					if (b != null) {
//						return "redirect:/admin/ordersadmin";
//					}
//			        return "addorder";
//			    }
			 @RequestMapping(value = { "/deleteorder" }, method = RequestMethod.GET)
			    public String deleteOrder(@RequestParam("billid") int billid) {
			        billDAO.deleteById(billid);
			        return "redirect:/admin/ordersadmin";
			    }
			 @RequestMapping(value = { "/logout" }, method = RequestMethod.GET)
			    public String logout(@PathVariable int userid,HttpSession session) {
//			        if(session.getAttribute("admin")!=null) {
//			        	session.invalidate();
//			        	return "redirect:/admin/login";
//			        }
			        return "redirect:/admin/login";
			    }
			 
			 @RequestMapping(value = {"/useradmin" }, method = RequestMethod.GET)
			    public String listUsers(ModelMap model,HttpSession session) {
			        List<User> users = userService.getAllUsers();
			        model.addAttribute("users", users);
			        return "useradmin";
			    }
			 @RequestMapping(value = { "/adduser" }, method = RequestMethod.GET)
				public String getUser(ModelMap model) {
					User user = new User();
					model.addAttribute("user", user);
					return "adduser";
				}

				@RequestMapping(value = { "/adduser" }, method = RequestMethod.POST)
				public String postUser(User user, BindingResult result) {

					User u = userService.add(user);
					System.out.println(u);
					return "redirect:/admin/useradmin";
				}
				 @RequestMapping(value = { "/edituser" }, method = RequestMethod.GET)
				    public String getEditUser(@RequestParam("userid")int userid, ModelMap model) {
				        User user = userService.getUserById(userid);
				        System.out.println(user);
//				        System.out.println(productid);
				        model.addAttribute("user", user);
				        return "adduser";
				    }
				 @RequestMapping(value = { "/edituser" }, method = RequestMethod.POST)
				    public String postEditMovie(@RequestParam("userid") int userid ,User user, ModelMap model) {
				    	User u  = userService.add(user);
						System.out.println(u);
						if (u != null) {
							return "redirect:/admin/useradmin";
						}
				        return "adduser";
				    }
				 @RequestMapping(value = { "/deleteuser-{userid}-user" }, method = RequestMethod.GET)
				    public String deleteUser(@PathVariable int userid) {
				        userService.deleteUserById(userid);
				        return "redirect:/admin/useradmin";
				    }
}