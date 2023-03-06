package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.ProductUpdateDTO;

public interface ProductUpdateDAO {

	public void insertBoard(ProductUpdateDTO productUpdateDTO);
	
	public Integer getMaxNum(ProductUpdateDTO productUpdateDTO);
	
	public List<ProductUpdateDTO> getUpdateList(ProductUpdateDTO productUpdateDTO);

	public void deleteBoard(ProductUpdateDTO productUpdateDTO);
	
	public ProductUpdateDTO getUpdate(int num);
	
	public void updateBoard(ProductUpdateDTO productUpdateDTO);

}
