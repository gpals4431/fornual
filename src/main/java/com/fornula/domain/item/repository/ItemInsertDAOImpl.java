package com.fornula.domain.item.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fornula.domain.item.dto.Item;
import com.fornula.domain.item.mapper.java.ItemInsertMapper;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ItemInsertDAOImpl implements ItemInsertDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertItem(Item item) {
		return sqlSession.getMapper(ItemInsertMapper.class).insertItem(item);
	}
}