package com.fornula.domain.expert.dto;

import com.fornula.domain.item.dto.Item;

import lombok.Data;

@Data
public class ItemSales {
	//1:1 ����
	private Sales sales;
	private Item item;
}
