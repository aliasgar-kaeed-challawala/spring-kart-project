package com.example.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.model.BillItem;


public interface BillItemDAO extends JpaRepository <BillItem, Integer>{

}
