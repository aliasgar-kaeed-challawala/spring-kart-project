package com.example.dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.example.model.AdminDTO;

@Repository

public interface AdminDAO extends JpaRepository<AdminDTO, Integer> {

//	public boolean existsByUsernameAndPassword(String username,String password);
	public AdminDTO findByUsernameAndPassword(String username,String password);
}
