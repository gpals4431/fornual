package com.fornula.domain.expert.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fornula.domain.expert.dto.Expert;
import com.fornula.domain.expert.repository.ExpertInputDAO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ExpertJoinServiceImpl implements ExpertJoinService {
	private final ExpertInputDAO expertInputDAO;
	
	//������ ��Ͻ� ���� ���ε� ����ó�� - ���� ���� ���� ����
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addExpertInfo(Expert expert) {
		expertInputDAO.insertExpertInfo(expert);
		
	}

}
