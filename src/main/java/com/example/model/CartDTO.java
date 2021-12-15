package com.example.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class CartDTO {
	@Id@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cartItemId;
	@ManyToOne()
	private ProductDTO productid;
	public CartDTO(int cartItemId, ProductDTO productid, int quantity, float total, float discount, User userId) {
		super();
		this.cartItemId = cartItemId;
		this.productid = productid;
		this.quantity = quantity;
		this.total = total;
		this.discount = discount;
		this.userId = userId;
	}
	public CartDTO() {

    }
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public ProductDTO getProductid() {
		return productid;
	}
	public void setProductid(ProductDTO productid) {
		this.productid = productid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}
	private int quantity;
	private float total;
	private float discount;
	@ManyToOne(fetch=FetchType.LAZY)
    private User userId;
	
    

	
}
