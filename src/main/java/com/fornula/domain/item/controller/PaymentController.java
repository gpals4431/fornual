package com.fornula.domain.item.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fornula.domain.item.dto.itemPayment.ItemPayment;
import com.fornula.domain.item.service.ItemPaymentService;
import com.fornula.domain.member.dto.Member;
import com.fornula.domain.member.dto.mypage.InfoCategory;
import com.fornula.domain.util.session.SessionConst;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/item")
public class PaymentController {

	 private final ItemPaymentService service;
	 
		@GetMapping("/payment")
		public String payment() {
		return "payment";
		}
		
		@GetMapping("/payment/{itemIdx}")
		public String getPayment(@ModelAttribute ItemPayment payment, HttpSession session) {
		
			Member member = (Member)session.getAttribute(SessionConst.Login_Member);
			 
			//itemIdx 받아서 객체만든다음
		   //Member joinMember = service.mypageInfoService(member.getMemberIdx());
			//객체로 서비스 메소드 호출
			   //Member joinMember = service.mypageInfoService(member.getMemberIdx());   
			
		   // session.setAttribute("member", joinMember);
		    //카테고리 값이 null일때 에러처리를 어떻게 한담..
			
			  // service.modifyPassword(category.getOne(), category.getTwo(), category.getThree(), member.getId());
			  
			   return "payment"; 
		}
		
		@PostMapping("/payment/{itemIdx}")
		public String postPayment(@ModelAttribute ItemPayment payment, HttpSession session) {
		
			Member member = (Member)session.getAttribute(SessionConst.Login_Member);
			 
			//itemIdx 받아서 객체만든다음
		   //Member joinMember = service.mypageInfoService(member.getMemberIdx());
			//객체로 서비스 메소드 호출
			   //Member joinMember = service.mypageInfoService(member.getMemberIdx());   
			
		   // session.setAttribute("member", joinMember);
		    //카테고리 값이 null일때 에러처리를 어떻게 한담..
			
			  // service.modifyPassword(category.getOne(), category.getTwo(), category.getThree(), member.getId());
			  
			   return "payment"; 
		}
				
	}

