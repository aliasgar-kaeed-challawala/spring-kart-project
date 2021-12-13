package com.example.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.example.model.ProductDTO;


@Component
public interface ProductService {
	public List<ProductDTO> getAllProducts(); 
	public ProductDTO add(ProductDTO product);
	public ProductDTO getProductById(int productid);
	public void deleteProductById(int productid);
	public List<ProductDTO> getProductsByCategory(String category); 
}
