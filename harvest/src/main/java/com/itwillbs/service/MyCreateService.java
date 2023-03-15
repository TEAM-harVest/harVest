package com.itwillbs.service;

import java.util.List;
import java.util.Map;

public interface MyCreateService {
	
	public List<Map<String, String>> getMyCreateList(String id);
	
	public int getMyCreateCount(String id);

}
