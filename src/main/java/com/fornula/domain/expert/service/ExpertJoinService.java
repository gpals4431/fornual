package com.fornula.domain.expert.service;

import com.fornula.domain.expert.dto.Expert;
import com.fornula.domain.member.dto.Member;
import com.fornula.domain.util.security.CustomMemberDetails;

public interface ExpertJoinService {
	void addExpertInfo(Expert expert);
	void updateExpertStatus(CustomMemberDetails member);
	//int searchExpertCategory(int interest);
}
