package com.example.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.example.model.ProductDTO;


@Repository
@Transactional
public interface ProductDAO extends JpaRepository<ProductDTO, Integer>{
	public List<ProductDTO> findAll();
	public ProductDTO getProductByProductid(int productid);
	public void deleteByProductid(int productid);
	public List<ProductDTO> findByCategory(String category);
	
}
