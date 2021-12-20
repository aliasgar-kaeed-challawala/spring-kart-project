package com.example.dao;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.model.BillDTO;
import com.example.model.BillItem;

@Repository
public interface BillItemDAO extends JpaRepository <BillItem, Integer>{

	Set<BillItem> findAllByBillid(BillDTO billid);

}
