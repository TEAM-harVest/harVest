package com.itwillbs.service;

import java.util.List;
import java.util.Map;

public interface MyFavoriteService {
	
	public List<Map<String, String>> getMyFavoriteList(String id);
	
	public int getMyFavoriteCount(String id);

}
