package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.EquipDTO;
import com.spring.ex.dto.QnADTO;

@Service
public class EquipDAO {

	@Autowired
	private SqlSession sqlSession;

	public List<EquipDTO> equipList() {
		System.out.println("========== Equipment List DAO ==========");

		return sqlSession.selectList("EquipMapper.equipList");
	}

	public List<EquipDTO> selectEquip(int p_id) {
		System.out.println("========== Select Equipment ==========");

		return sqlSession.selectList("EquipMapper.selectEquip", p_id);
	}

	// 장비 삭제
	public Integer deleteEquip(int p_id) {
		System.out.println("========== User Delete Start ==========");
		System.out.println("Deleted ID : " + p_id);

		return sqlSession.delete("EquipMapper.deleteEquip", p_id);
	}

	// 장비 수정
	public Integer updateEquip(String p_id, String p_name, String p_content, String p_kind, String p_price) {
		System.out.println("========== Update Equipment DAO ==========");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("p_id", p_id);
		map.put("p_name", p_name);
		map.put("p_content", p_content);
		map.put("p_kind", p_kind);
		map.put("p_price", p_price);

		return sqlSession.update("EquipMapper.updateEquip", map);
	}

	public Integer equipRegister(String p_name, String p_content, String p_kind, String p_price) {
		System.out.println("========== Equip Register DAO ==========");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("p_name", p_name);
		map.put("p_content", p_content);
		map.put("p_kind", p_kind);
		map.put("p_price", p_price);

		return sqlSession.insert("EquipMapper.equipRegister", map);
	}

}
