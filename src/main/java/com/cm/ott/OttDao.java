package com.cm.ott;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OttDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	// 삽입
	public int insert(Map<String, Object> map) {
		return this.sqlSessionTemplate.insert("ott.insert", map);
	}
	
	// 상세 조회
	public Map<String, Object> selectDetail(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("ott.select_detail", map);
	}
	
	// 수정
	public int update(Map<String, Object> map) {  
		return this.sqlSessionTemplate.update("ott.update", map);  
	}  

	// 삭제
	public int delete(Map<String, Object> map) {  
		return this.sqlSessionTemplate.delete("ott.delete", map);  
	}  

	// 리스트 조회
	public List<Map<String, Object>> selectList(Map<String, Object> map) {  
		return this.sqlSessionTemplate.selectList("ott.select_list", map);  
	}  


}
