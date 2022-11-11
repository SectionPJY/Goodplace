package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.CampDTO;

@Service
public class CampDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public List<CampDTO> campList() {
		System.out.println("========== Camp List DAO ==========");
		
		return sqlSession.selectList("CampMapper.campList");
	}
	
	public List<CampDTO> campSelect(int c_id) {
		System.out.println("========== Camp Select DAO ==========");
		
		return sqlSession.selectList("CampMapper.campSelect", c_id);
	}
	
	public Integer deleteCamp(int c_id) {
		System.out.println("========== User Delete Start ==========");
		System.out.println("Deleted ID : " + c_id);

		return sqlSession.delete("CampMapper.deleteCamp", c_id);
	}
	
	public Integer updateCamp(String c_id, String c_name, String c_price, String c_address) {
		System.out.println("========== Update Camp DAO ==========");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("c_id", c_id);
		map.put("c_name", c_name);
		map.put("c_price", c_price);
		map.put("c_address", c_address);
		
		return sqlSession.update("CampMapper.updateCamp", map);
	}
	
	public int campRegister(String c_name, String c_address, String c_content) {
		System.out.println("========== Camp Register DAO ==========");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("c_name", c_name);
		map.put("c_address", c_address);
		map.put("c_content", c_content);

		return sqlSession.insert("CampMapper.campRegister", map);
	}
}
