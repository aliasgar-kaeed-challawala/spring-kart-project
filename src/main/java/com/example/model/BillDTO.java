package com.example.model;

import java.sql.Date;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class BillDTO {
	@Id@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private int billid;
	public int getBillid() {
		return billid;
	}

	public void setBillid(int billid) {
		this.billid = billid;
	}
	@ManyToOne()
	private User user;
	private String username;
	private Date billdate;
	private float total;
	
	public BillDTO(String username, int userid, Date invoice_date, float total) {
		super();
		this.username = username;

		this.billdate = invoice_date;
		this.total = total;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	
	public Date getInvoice_date() {
		return billdate;
	}
	public void setInvoice_date(Date invoice_date) {
		this.billdate = invoice_date;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	@Override
	public int hashCode() {
		return Objects.hash(billdate, total, username);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BillDTO other = (BillDTO) obj;
		return Objects.equals(billdate, other.billdate)
				&& Float.floatToIntBits(total) == Float.floatToIntBits(other.total) 
				&& Objects.equals(username, other.username);
	}
	@Override
	public String toString() {
		return "BillDTO [username=" + username + ", invoice_date=" + billdate + ", total="
				+ total + "]";
	}
}
