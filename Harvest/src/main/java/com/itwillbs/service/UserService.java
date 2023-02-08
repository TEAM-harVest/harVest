package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.UserDTO;


public interface UserService {
	
	//MemberDTO dto=memberService.getMember(id);
	public UserDTO getMember(String id);
}
