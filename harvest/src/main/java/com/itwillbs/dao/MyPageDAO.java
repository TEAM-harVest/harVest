package com.itwillbs.dao;

import java.util.Map;

import com.itwillbs.domain.UserDTO;

public interface MyPageDAO {
	
	public void insertUser(UserDTO userDto);
	
	public UserDTO userCheck(UserDTO userDto);
	
	public UserDTO getUser(String id);
	
	public void updateUser(Map<String, String> param);
	
	public void deleteUser(UserDTO usetDto);
	
	
}
