package com.fornula.domain.item.service;

import java.util.List;


import com.fornula.domain.item.dto.Cart;
import com.fornula.domain.item.dto.CartList;
import com.fornula.domain.item.dto.Photo;


public interface CartService {
	void addCart(Cart cart);
	void removeCart(int itemIdx, int memberIdx );
	List<CartList> getCartList(int memberIdx);
	Photo getCartPhotoIdx(int itemIdx);
	
}
