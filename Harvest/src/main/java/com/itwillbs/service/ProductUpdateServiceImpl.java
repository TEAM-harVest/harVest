package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProductUpdateDAO;
import com.itwillbs.domain.ProductUpdateDTO;

@Service
public class ProductUpdateServiceImpl implements ProductUpdateService{
	
	@Inject
	private ProductUpdateDAO productUpdateDAO;

	@Override
	public void insertBoard(ProductUpdateDTO productUpdateDTO) {
		
		// 작성 날짜 넣기
		productUpdateDTO.setDate(new Timestamp(System.currentTimeMillis()));
		
		// 공지사항 글(IDX) 자동으로 번호 1씩 증가
		if(productUpdateDAO.getMaxNum(productUpdateDTO) == null) {
			productUpdateDTO.setIdx(1);
			
		} else {
			productUpdateDTO.setIdx(productUpdateDAO.getMaxNum(productUpdateDTO) + 1);
			
		}
		
		productUpdateDAO.insertBoard(productUpdateDTO);
	}

	@Override
	public List<ProductUpdateDTO> getUpdateList(ProductUpdateDTO productUpdateDTO) {
		return productUpdateDAO.getUpdateList(productUpdateDTO);
	}

	@Override
	public void deleteBoard(ProductUpdateDTO productUpdateDTO) {
		productUpdateDAO.deleteBoard(productUpdateDTO);
		
	}
	
	

	

}
