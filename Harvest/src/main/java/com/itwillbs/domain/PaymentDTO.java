package com.itwillbs.domain;

import java.util.Date;

public class PaymentDTO {
	
	private int idx;
	private int pjIdx;
	private String id;
	private int amount;
	private String address;
	private String phone;
	private Date date;
	private Date payDate;
	private String status;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getPjIdx() {
		return pjIdx;
	}
	public void setPjIdx(int pjIdx) {
		this.pjIdx = pjIdx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	
	
	@Override
	public String toString() {
		return "PaymentDTO [idx=" + idx + ", pjIdx=" + pjIdx + ", id=" + id + ", amount=" + amount + ", address="
				+ address + ", phone=" + phone + ", payDate=" + payDate + ", date=" + date + ", status=" + status + "]";
	}
	
	
	
	
}
