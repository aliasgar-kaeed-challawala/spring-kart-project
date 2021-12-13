package com.example.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class ProductDTO implements Serializable, Comparable<ProductDTO> {
	@Id@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private int productid;
	private String productname;
	private String category;
	private float price;
	private String description;
	private String image;
	private String brand;
	private int stock;
	
	public ProductDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	@Override
	public String toString() {
		return "ProductDTO [productid=" + productid + ", productname=" + productname + ", category=" + category
				+ ", price=" + price + ", description=" + description + ", image=" + image + ", brand=" + brand
				+ ", stock=" + stock + "]";
	}
	@Override
	public int compareTo(ProductDTO o) {
		// TODO Auto-generated method stub
		return this.productid-o.productid;
	}
	
	
}
