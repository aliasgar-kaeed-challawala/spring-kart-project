package com.example.dao;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.example.model.ProductDTO;
import com.example.model.User;
@Repository
@Transactional
public interface UserDAO extends JpaRepository<User, Integer> {

	public boolean existsByUsernameAndPassword(String username,String password);
	public User findByUsernameAndPassword(String username,String password);
	public User getUserByid(int userid);
	public void deleteByid(int userid);
//	Optional<User> findByUsername(String username);
	public Optional<User> findByUsername(String username);
	
}
