package com.example.dao;

import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.model.CartDTO;
import com.example.model.User;
@Repository
@Transactional
public interface CartDAO extends JpaRepository <CartDTO, Integer>{
	Set<CartDTO> findAllByUserId(User user);
	
	void deleteAllByUserId(User user);
}
