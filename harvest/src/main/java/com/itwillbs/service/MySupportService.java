package com.itwillbs.service;

import java.util.List;
import java.util.Map;

public interface MySupportService {

	public List<Map<String, String>> getMySupportList(String id);
	
	public int getMySupportCount(String id);
}
