package com.fornula.domain.board.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fornula.domain.board.dto.Review;
import com.fornula.domain.board.dto.ReviewForm;
import com.fornula.domain.board.service.ReviewService;
import com.fornula.domain.item.dto.Purchase;
import com.fornula.domain.member.dto.Member;
import com.fornula.domain.util.session.SessionConst;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
@RequiredArgsConstructor
public class BoardController {
	
	private final ReviewService reviewService;
	
	@PostMapping("/add/{itemIdx}")
	public String addBoard(@ModelAttribute ReviewForm form,
							HttpSession session,
							RedirectAttributes redirectAttributes,
							@PathVariable Integer itemIdx) {
		
		Member loginMember = (Member)session.getAttribute(SessionConst.Login_Member);
		
		log.info("loginMember 번호 = {}", loginMember.getMemberIdx());
		
		Purchase purchase = reviewService.selectPurchase(loginMember.getMemberIdx(), itemIdx);
		
		if(purchase == null) {
			redirectAttributes.addAttribute("status", false);
			redirectAttributes.addAttribute("itemIdx", itemIdx);
			return "redirect:/item/{itemIdx}/1";
		}
		
		Review review = new Review();
		review.setPurchaseIdx(purchase.getPurchaseIdx());
		review.setContent(form.getContent());
		
		int addResult = reviewService.addReview(review);
		
		if(addResult == 0) {
			return "404";
		}
		
		redirectAttributes.addAttribute("itemIdx", itemIdx);
		
		return "redirect:/item/{itemIdx}/1";
	}
	
}
