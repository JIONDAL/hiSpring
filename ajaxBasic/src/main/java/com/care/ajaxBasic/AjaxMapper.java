package com.care.ajaxBasic;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface AjaxMapper {

	String exists(String id);

	int jsonInsert(AjaxVO ajax);

	void jsonDelete();

	List<AjaxVO> ex6();

	List<AjaxVO> all();

	List<AjaxVO> title(String title);
}









