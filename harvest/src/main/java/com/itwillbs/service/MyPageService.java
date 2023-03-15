package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.UserDTO;

public interface MyPageService {
	
	public void insertMember(UserDTO userDto);
	
	public UserDTO userCheck(UserDTO userDto);
	
	public UserDTO getUser(String id);
	
	public void updateUser(Map<String, String> param);
	
	public void deleteUser(UserDTO usetDto);
	
	
}
