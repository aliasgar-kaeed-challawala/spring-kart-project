package com.example.service;

import java.util.List;

import javax.persistence.PersistenceException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.dao.ProductDAO;
import com.example.model.ProductDTO;
import com.example.model.User;

@Component
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	ProductDAO productDAO;
	

	@Override
	public List<ProductDTO> getAllProducts() {
		List<ProductDTO> products = productDAO.findAll();
		return products;
	}
	public ProductDTO add(ProductDTO product) {
		try {
			return productDAO.save(product);
		} catch (PersistenceException e) {
			System.out.println(e.getMessage());
		} catch (Exception e) {
			Throwable t;
			for (t = e.getCause(); t.getCause() != null; t = t.getCause()) {
			}
			System.out.println(t.getMessage());
		}
		return null;
	}
	@Override
	public ProductDTO getProductById(int productid) {
		ProductDTO res = productDAO.getProductByProductid(productid);
		return res;
	}
	@Override
	public void deleteProductById(int productid) {
		productDAO.deleteByProductid(productid);
	}
	@Override
	public List<ProductDTO> getProductsByCategory(String category) {
		List<ProductDTO> products = productDAO.findByCategory(category);
		System.out.println("inside product service");
		System.out.println(products);
		return products;
	}

}
