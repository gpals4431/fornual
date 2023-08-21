package com.fornula.domain.expert.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ExpertController {
	//������ ���
	@RequestMapping(value = "/expertjoin")
	public String join() {
		log.info("ExportController Ŭ������ join() �޼ҵ� ����");
		return "expert_join";
	}
	
	//������ ������ - ������ ���� ����/���
	@RequestMapping(value = "/expertinput")
	public String input() {
		log.info("ExportController Ŭ������ input() �޼ҵ� ����");
		return "expert-input";
	}
	
	//������ ������ - ������ ���ų���
	@RequestMapping(value = "/expertsales")
	public String sales() {
		log.info("ExportController Ŭ������ sales() �޼ҵ� ����");
		return "expert-sales";
	}
	
	//������ ������ - ������ ��Ʈ������
	@RequestMapping(value = "/expertoutput")
	public String output() {
		log.info("ExportController Ŭ������ output() �޼ҵ� ����");
		return "expert-output";
	}

	//������ ������ - ������ ��ǰ���
	@RequestMapping(value = "/expertitem")
	public String item() {
		log.info("ExportController Ŭ������ item() �޼ҵ� ����");
		return "expert-item";
	}
}