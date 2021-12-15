package com.example.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.model.BillDTO;


public interface BillDAO extends JpaRepository <BillDTO, Integer>{

}
