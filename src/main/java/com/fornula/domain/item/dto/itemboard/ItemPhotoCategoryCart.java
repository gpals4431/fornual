package com.fornula.domain.item.dto.itemboard;

import com.fornula.domain.item.dto.Cart;
import com.fornula.domain.item.dto.Category;
import com.fornula.domain.item.dto.Item;
import com.fornula.domain.item.dto.Photo;

import lombok.Data;

//ItemBoardMapper에서 테이블 조인을 하기 때문에 만드는 DTO클래스임
@Data
public class ItemPhotoCategoryCart {
	private Item item;
	private Photo photo;
	private Category category;
	private Cart cart;
}