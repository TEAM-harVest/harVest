package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

public interface MyFavoriteDAO {
	
	public List<Map<String, String>> getMyFavoriteList(String id);

	public int getMyFavoriteCount(String id);
}
