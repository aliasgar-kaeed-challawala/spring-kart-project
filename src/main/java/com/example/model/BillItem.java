package com.example.model;

import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class BillItem {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int billItemNo;
	@ManyToOne()
	private ProductDTO productid;
	private int quantity;
	private float price;
	private String productName;
	@ManyToOne(fetch=FetchType.LAZY)
	private BillDTO billid;
	
	
	public int getBillItemNo() {
		return billItemNo;
	}
	public void setBillItemNo(int billItemNo) {
		this.billItemNo = billItemNo;
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
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public BillDTO getBillId() {
		return billid;
	}
	public void setBillId(BillDTO bill) {
		this.billid = bill;
	}
	@Override
	public String toString() {
		return "BillItem [billItemNo=" + billItemNo + ", productid=" + productid + ", quantity=" + quantity + ", price="
				+ price + ", productName=" + productName + ", bill=" + billid + "]";
	}
	public BillItem(int billItemNo, ProductDTO productid, int quantity, float price, String productName, BillDTO billid) {
		super();
		this.billItemNo = billItemNo;
		this.productid = productid;
		this.quantity = quantity;
		this.price = price;
		this.productName = productName;
		this.billid = billid;
	}
	@Override
	public int hashCode() {
		return Objects.hash(billid, billItemNo, price, productName, productid, quantity);
	}
	
	public BillItem() {}
	

}
