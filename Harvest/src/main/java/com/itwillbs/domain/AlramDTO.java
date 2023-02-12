package com.itwillbs.domain;

import java.sql.Date;

public class AlramDTO {
	
	private int num;
	private int idx;
	private String title;
	private Date start;
	private String id;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	@Override
	public String toString() {
		return "" + idx;
	}
	

}
