package com.fornula.domain.expert.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fornula.domain.expert.dto.Expert;
import com.fornula.domain.expert.service.ExpertJoinService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/")
public class ExpertJoinController {
	private final ExpertJoinService expertJoinService;
	@GetMapping("/expertjoin")
	public String join() {
		return "expert-join";
	}
	
	@PostMapping("/expertjoin")
	public String join(@ModelAttribute Expert expert, Model model) {
		//�ߺ����� ��� ���� ������
		expertJoinService.addExpertInfo(expert);
		
		//���� ó�� 
		//model.addAttribute("message","�̹� �������� ��ϵǾ����ϴ�.");

		//���࿡ �α��λ���ڰ� �������� �ƴҰ�쿡�� ����� ����
		return "main";
	}
	
}
