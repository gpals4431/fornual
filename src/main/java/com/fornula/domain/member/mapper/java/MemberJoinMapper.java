package com.fornula.domain.member.mapper.java;

import java.util.Optional;

import com.fornula.domain.item.dto.Category;
import com.fornula.domain.member.dto.Member;

public interface MemberJoinMapper {
	
	Optional<Member> idCheck(String id);
	
	int joinMember(Member member);
	
	Category selectCategory(String small);
}