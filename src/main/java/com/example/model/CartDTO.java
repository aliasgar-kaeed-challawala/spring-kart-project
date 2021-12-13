package com.example.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class CartDTO {
	@Id
	private int billno;
	private int productid;
	private int quantity;
	private float total;
	private float discount;

	
}
