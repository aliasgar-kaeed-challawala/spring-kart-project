package com.example.service;

import org.springframework.stereotype.Component;

import com.example.model.AdminDTO;

@Component
public interface AdminService {
	public AdminDTO login(String username,String password);
}
