package com.itwillbs.domain;

public class UserDTO {
	
	// 멤버변수
	private int idx;
	private String name;
	private String id;
	private String pass;
	private String profile;		 //프로필사진
	private String phone;
	private String prefer;		 //유저취향
	private String unregist;	 //탈퇴
	private String unregistDate; //탈퇴일자
	private String eventAlr;	 //이벤트알람

	
	
	// 멤버함수(메서드)
	// set() : 멤버변수에 외부의 데이터를 저장
	// get() : 외부에서 멤버변수 데이터를 가져다 사용
	
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
	
	public String getPrefer() {
		return prefer;
	}
	public void setPrefer(String prefer) {
		this.prefer = prefer;
	}
	
	public String getUnregist() {
		return unregist;
	}
	public void setUnregist(String unregist) {
		this.unregist = unregist;
	}
	
	public String getUnregistDate() {
		return unregistDate;
	}
	public void setUnregistDate(String unregistDate) {
		this.unregistDate = unregistDate;
	}
	
	public String getEventAlr() {
		return eventAlr;
	}
	public void setEventAlr(String eventAlr) {
		this.eventAlr = eventAlr;
	}

	@Override
	public String toString() {
		return "UserDTO [idx=" + idx + ", name=" + name + ", id=" + id + ", pass=" + pass + ", profile=" + profile
				+ ", phone=" + phone + ", prefer=" + prefer + ", unregist=" + unregist + ", unregistDate="
				+ unregistDate + ", eventAlr=" + eventAlr + "]";
	}
	
	
	// 테스트
//	@Override
//	public String toString() {
//		return "UserDTO [idx=" + idx + ", name=" + name + ", id=" + id + ", pass=" + pass + ", phone=" + phone
//				+ ", prefer=" + prefer + ", eventAlr=" + eventAlr + ", authKey=" + authKey + ", authSt=" + authSt + "]";
//	}
	
//	public String getGetEmail() {
//		return getEmail;
//	}
//	public void setGetEmail(String getEmail) {
//		this.getEmail = getEmail;
//	}


	

}
