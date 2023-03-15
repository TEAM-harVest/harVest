package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

public interface MySupportDAO {
	
	public List<Map<String, String>> getMySupportList(String id);
	
	public int getMySupportCount(String id);
	
	
}
