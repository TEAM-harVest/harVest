package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.UserDTO;

public interface AddressService {
	
	public List<AddressDTO> getAddressList(String id);
	
	public void insertAddress(AddressDTO addressDto);
	
	public void deleteAddress(AddressDTO addressDto);

	public AddressDTO getAddress(String id); 
}
