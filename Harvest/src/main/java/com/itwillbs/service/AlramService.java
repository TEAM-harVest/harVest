package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AlramDAO;
import com.itwillbs.domain.AlramDTO;


@Service
public class AlramService {
	
	@Inject
	private AlramDAO alramDAO;
	
	public void insertAlram(AlramDTO alramDTO) {
		if(alramDAO.getMaxNum()==null) {
			alramDTO.setNum(1);
		} else {
			alramDTO.setNum(alramDAO.getMaxNum()+1);
		}
		
		alramDAO.insertAlram(alramDTO);
	}

	public List<AlramDTO> getAlram() {
		return alramDAO.getAlram();
	}

	public int getAlramCount() {
		return alramDAO.getAlramCount();
	}
	


}
