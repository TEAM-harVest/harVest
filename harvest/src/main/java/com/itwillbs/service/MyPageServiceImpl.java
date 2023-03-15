package com.itwillbs.service;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MyPageDAO;
import com.itwillbs.domain.UserDTO;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Inject	
	private MyPageDAO myPageDAO;

	@Override
	public void insertMember(UserDTO userDto) {
		myPageDAO.insertUser(userDto);
	}

	@Override
	public UserDTO userCheck(UserDTO userDto) {
		return myPageDAO.userCheck(userDto);
	}

	@Override
	public UserDTO getUser(String id) {
		return myPageDAO.getUser(id);
	}

	@Override
	public void updateUser(Map<String, String> param) {
		System.out.println("MyPageServiceImple - updateUser() 메서드");
		myPageDAO.updateUser(param);
	}
	
	@Override
	public void deleteUser(UserDTO usetDto) {
		myPageDAO.deleteUser(usetDto);
	}


}
