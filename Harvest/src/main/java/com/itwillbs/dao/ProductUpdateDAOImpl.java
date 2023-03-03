package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ProductUpdateDTO;

@Repository
public class ProductUpdateDAOImpl implements ProductUpdateDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.mappers.productUpdateMapper";

	@Override
	public void insertBoard(ProductUpdateDTO productUpdateDTO) {
		sqlSession.insert(namespace + ".insertBoard", productUpdateDTO);
	}

	@Override
	public Integer getMaxNum(ProductUpdateDTO productUpdateDTO) {
		return sqlSession.selectOne(namespace + ".getMaxNum", productUpdateDTO);
	}

	@Override
	public List<ProductUpdateDTO> getUpdateList(ProductUpdateDTO productUpdateDTO) {
		return sqlSession.selectList(namespace + ".getUpdateList", productUpdateDTO);
	}

	@Override
	public void deleteBoard(ProductUpdateDTO productUpdateDTO) {
		sqlSession.delete(namespace + ".deleteUpdate", productUpdateDTO);
		
	}

	
	
	
	
	

	
}
