package com.fornula.domain.admin.service;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fornula.domain.admin.dto.AdminItem;
import com.fornula.domain.admin.dto.AdminMember;
import com.fornula.domain.admin.repository.AdminRepository;
import com.fornula.domain.member.dto.Member;
import com.fornula.domain.util.pager.Pager;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService{

	private final AdminRepository adminRepository;
	
	@Override
	public Map<String, Object> memberList(int pageNum) {
		int totalBoard=adminRepository.memberListCount();
		int pageSize=5; // 출력 갯수
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		List<AdminMember> memberList=adminRepository.memberList(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("memberList", memberList);
		
		return resultMap;
	}
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void updateMemberStatus(int memberIdx) {
		adminRepository.updateMemberStatus(memberIdx);
	}
	
	
	@Override
	public Map<String, Object> itemList(int pageNum) {
		int totalBoard=adminRepository.itemListCount();
		int pageSize=5;
		int blockSize=5;
		
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		List<AdminItem> itemList=adminRepository.itemList(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("itemList", itemList);
		
		return resultMap;
	}


	@Transactional (rollbackFor = Exception.class)
	@Override
	public void updateItemStatus(int itemIdx) {
		adminRepository.updateItemStatus(itemIdx);
	}
	


}