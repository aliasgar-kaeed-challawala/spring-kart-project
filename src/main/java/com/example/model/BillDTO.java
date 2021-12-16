package com.example.model;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Objects;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
@Entity
public class BillDTO {
	@Id@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private int billid;
	
	
	private int userid;
	
	public int getUserid() {
		return userid;
	}
	
	private String username;
	private LocalDate billdate;
	private float total;
	@OneToMany(mappedBy="billid")
	private Set<BillItem> billitems;
	
	public BillDTO(String username, int userid, LocalDate invoice_date, float total) {
		super();
		this.username = username;

		this.billdate = invoice_date;
		this.total = total;
	}
	public int getBillid() {
		return billid;
	}

	public void setBillid(int billid) {
		this.billid = billid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	
	public LocalDate getInvoice_date() {
		return billdate;
	}
	public void setInvoice_date(LocalDate localDate) {
		this.billdate = localDate;
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
	public BillDTO() {}
	public void setUserid(int userid) {
		// TODO Auto-generated method stub
		this.userid=userid;
		
	}
}
