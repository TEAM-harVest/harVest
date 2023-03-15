package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

public interface MyCreateDAO {
	
	public List<Map<String, String>> getMyCreateList(String id);
	
	public int getMyCreateCount(String id);
}
