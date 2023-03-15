package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MySupportDAO;

@Service
public class MySupportServiceImpl implements MySupportService {

	@Inject
	private MySupportDAO mySupportDAO;

	@Override
	public List<Map<String, String>> getMySupportList(String id) {
		return mySupportDAO.getMySupportList(id);
	}

	@Override
	public int getMySupportCount(String id) {
		return mySupportDAO.getMySupportCount(id) ;
	}
	
	
	
	
}
