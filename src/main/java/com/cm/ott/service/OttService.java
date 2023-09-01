package com.cm.ott.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public interface OttService {

	String create(Map<String, Object> map);	// 삽입

	Map<String, Object> detail(Map<String, Object> map);	// 상세 조회

	boolean edit(Map<String, Object> map);	// 수정

	boolean remove(Map<String, Object> map);	// 삭제

	List<Map<String, Object>> list(Map<String, Object> map);	// 검색, 조회

}
