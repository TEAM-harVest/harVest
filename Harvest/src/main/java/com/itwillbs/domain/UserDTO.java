package com.itwillbs.domain;

public class UserDTO {
	
	// �������
	private int idx;
	private String name;
	private String id;
	private String pass;
	private String phone;
	private String prefer;		//��������
	private String eventAlr;		//�̺�Ʈ�˶�
//	private String authKey;		//�̸��� ����Ű
//	private String authSt;		//�̸��� ��������(default 0 / �����Ϸ� �� 1)
//	private String getEmail;	//�̸��� ����
	
	
	// ����Լ�(�޼���)
	// set() : ��������� �ܺ��� �����͸� ����
	// get() : �ܺο��� ������� �����͸� ������ ���
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
	
	
	public String getEventAlr() {
		return eventAlr;
	}
	public void setEventAlr(String eventAlr) {
		this.eventAlr = eventAlr;
	}
//	public String getAuthKey() {
//		return authKey;
//	}
//	public void setAuthKey(String authKey) {
//		this.authKey = authKey;
//	}
//	
//	public String getAuthSt() {
//		return authSt;
//	}
//	public void setAuthSt(String authSt) {
//		this.authSt = authSt;
//	}
	
	// �׽�Ʈ
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
