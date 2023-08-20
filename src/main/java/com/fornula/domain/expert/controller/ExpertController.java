package com.fornula.domain.expert.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ExpertController {
	@RequestMapping(value = "/expertinput", method = RequestMethod.GET)
	public String input() {
		log.info("ExpertController Ŭ������ input() �޼ҵ� ����");
		return "expert-input";
	}
}
