package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.CommunityDTO;
import com.itwillbs.domain.PaymentDTO;

public interface CommunityService {

	public List<CommunityDTO> getComm1List(CommunityDTO communityDTO);
	
//	public List<CommunityDTO> getComm2List(CommunityDTO dto);
//	
//	public List<CommunityDTO> getComm3List(CommunityDTO dto);

	public void insertBoard(CommunityDTO communityDTO);
	
	public void deleteBoard(int idx);

	public PaymentDTO getPaymentInfo(PaymentDTO paymentDTO);
	

}
