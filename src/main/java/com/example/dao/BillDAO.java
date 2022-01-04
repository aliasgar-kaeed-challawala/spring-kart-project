package com.example.dao;

import java.util.Optional;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.model.BillDTO;

@Repository
@Transactional
public interface BillDAO extends JpaRepository <BillDTO, Integer>{

	
	
	Set<BillDTO> findAllByUserid(int userid);
}
