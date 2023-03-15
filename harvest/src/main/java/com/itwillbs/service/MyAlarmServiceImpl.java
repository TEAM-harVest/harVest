package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MyAlarmDAO;

@Service
public class MyAlarmServiceImpl implements MyAlarmService {
	
	@Inject
	private MyAlarmDAO myAlarmDAO;

	@Override
	public List<Map<String, String>> getMyAlarmList(String id) {
		return myAlarmDAO.getMyAlarmList(id);
	}
	
	
	
}
