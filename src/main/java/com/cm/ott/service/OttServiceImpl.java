package com.cm.ott.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.ott.dao.OttDao;

@Service
public class OttServiceImpl implements OttService {
	@Autowired
	OttDao ottDao;

	// 삽입
	@Override
	public String create(Map<String, Object> map) {
		int affectRowCount = this.ottDao.insert(map);
	    if (affectRowCount ==  1) {
	        return map.get("ott_id").toString();
	    }
	    return null;
	}
	
	// 상세 조회
	@Override
	public Map<String, Object> detail(Map<String, Object> map){
	    return this.ottDao.selectDetail(map);
	}
	
	// 수정
	@Override  
	public boolean edit(Map<String, Object> map) {  
		int affectRowCount = this.ottDao.update(map);  
		return affectRowCount == 1;  
	}  

	// 삭제
	@Override  
	public boolean remove(Map<String, Object> map) {  
		int affectRowCount = this.ottDao.delete(map);  
		return affectRowCount == 1;  
	}
	
	// 리스트 조회
	@Override  
	public List<Map<String, Object>> list(Map<String, Object> map){  
		return this.ottDao.selectList(map);  
	}  
}

