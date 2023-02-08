package com.itwillbs.domain;

import java.sql.Date;

public class UserDTO {
	
	private int idx;
	private String name;
	private String id;
	private String pass;
	private String profile;
	private String phone;
	private String address;
	private Date date;
	private String eventSt;
	private String userPrefer;
	private String userSt;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getEventSt() {
		return eventSt;
	}
	public void setEventSt(String eventSt) {
		this.eventSt = eventSt;
	}
	public String getUserPrefer() {
		return userPrefer;
	}
	public void setUserPrefer(String userPrefer) {
		this.userPrefer = userPrefer;
	}
	public String getUserSt() {
		return userSt;
	}
	public void setUserSt(String userSt) {
		this.userSt = userSt;
	}
	
	
	
	
	

	
}
