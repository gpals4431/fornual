package com.fornula.domain.expert.dto;

import lombok.Data;

/*�̸�           ��?       ����     
------------ -------- ------ 
SALES_IDX    NOT NULL NUMBER 
ITEM_IDX     NOT NULL NUMBER 
SALES_DATE   NOT NULL DATE   
SALES_STATUS NOT NULL NUMBER 
*/
@Data
public class Sales {
	private int salesIdx;
	private int itemIdx;
	private String salesDate;
	private int salesStatus;
}
