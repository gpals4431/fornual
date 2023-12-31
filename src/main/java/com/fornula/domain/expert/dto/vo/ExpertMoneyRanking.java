package com.fornula.domain.expert.dto.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class ExpertMoneyRanking {
	private int expertIdx;
	private int interest;
	private String introduce;
	private int salesIdx;
	private int itemIdx;
	private int price;
	private int totalMoney;
	private String career;
	private String id;
	private int memberIdx;
}