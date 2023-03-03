package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.ProductUpdateDTO;

public interface ProductUpdateService {


	public List<ProductUpdateDTO> getUpdateList(ProductUpdateDTO productUpdateDTO);

	public void insertBoard(ProductUpdateDTO productUpdateDTO);

	public void deleteBoard(ProductUpdateDTO productUpdateDTO);

}
