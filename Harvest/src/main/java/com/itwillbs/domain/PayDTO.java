package com.itwillbs.domain;

public class PayDTO {
	
	private String PID; // �Ŀ���ID
	private String PTITLE; // �Ŀ��� ������Ʈ��
	private int AMOUNT; // �Ŀ��ݾ�(�����ݾ�)
	private String PSTATUS; // ��������
	
	// join������ �ʿ��� ������Ʈ �÷���.
	private String IDX; 
	private String FUNDSTATUS;
	
	
	
	public String getIDX() {
		return IDX;
	}
	public void setIDX(String iDX) {
		IDX = iDX;
	}
	public String getFUNDSTATUS() {
		return FUNDSTATUS;
	}
	public void setFUNDSTATUS(String fUNDSTATUS) {
		FUNDSTATUS = fUNDSTATUS;
	}
	public String getPID() {
		return PID;
	}
	public void setPID(String pID) {
		PID = pID;
	}
	public String getPTITLE() {
		return PTITLE;
	}
	public void setPTITLE(String pTITLE) {
		PTITLE = pTITLE;
	}
	public int getAMOUNT() {
		return AMOUNT;
	}
	public void setAMOUNT(int aMOUNT) {
		AMOUNT = aMOUNT;
	}
	public String getPSTATUS() {
		return PSTATUS;
	}
	public void setPSTATUS(String pSTAUS) {
		PSTATUS = pSTAUS;
	}

}
