package com.example.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.model.Role;

public interface RoleDAO extends JpaRepository<Role,Integer>{

}
