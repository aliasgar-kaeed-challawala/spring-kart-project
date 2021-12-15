 package com.example.model;

import java.util.List;
import java.util.Objects;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity

public class User {
@Id@GeneratedValue(strategy = GenerationType.IDENTITY)	
private int id;
private String username;
private String email;
private String password;
private String address;
private String phoneNumber;
//private int flag;
@OneToMany(mappedBy = "userId",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
private Set<CartDTO> cartItems;
public Set<CartDTO> getCartItems() {
	return cartItems;
}

public void setCartItems(Set<CartDTO> cartItems) {
	this.cartItems = cartItems;
}

@ManyToMany(cascade = CascadeType.MERGE, fetch=FetchType.EAGER)
@JoinTable(
		name="user_role",
		joinColumns= {@JoinColumn(name="USER_ID",referencedColumnName="ID")},
		inverseJoinColumns =  {@JoinColumn(name="ROLE_ID",referencedColumnName="ID")}
		
		)
private List<Role> roles;





public List<Role> getRoles() {
	return roles;
}

public void setRoles(List<Role> roles) {
	this.roles = roles;
}

public User(User user) {
	super();
	this.id = user.getUserid();
	this.username = user.getUsername();
	this.email = user.getEmail();
	this.password = user.getPassword();
	this.address = user.getAddress();
	this.phoneNumber = user.getPhoneNumber();
	this.cartItems = user.getCartItems();
	this.roles = user.getRoles();
}

public User() {
	
}

public int getUserid() {
	return id;
}

public void setUserid(int userid) {
	this.id = userid;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getPhoneNumber() {
	return phoneNumber;
}

public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}
//
//public int getFlag() {
//	return flag;
//}
//
//public void setFlag(int flag) {
//	this.flag = flag;
//}

@Override
public int hashCode() {
	return Objects.hash(address, email, password, phoneNumber, id, username);
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	User other = (User) obj;
	return Objects.equals(address, other.address) && Objects.equals(email, other.email)
			&& Objects.equals(password, other.password) && Objects.equals(phoneNumber, other.phoneNumber)
			 && id == other.id && Objects.equals(username, other.username);
}

@Override
public String toString() {
	return "UserDTO [userid=" + id + ", username=" + username + ", email=" + email + ", password=" + password
			+ ", address=" + address + ", phoneNumber=" + phoneNumber + "]";
}
}
