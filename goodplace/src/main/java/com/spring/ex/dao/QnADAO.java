package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dto.QnADTO;

@Service
public class QnADAO {

	@Autowired
	private SqlSession sqlSession;

	// QnA List
	public List<QnADTO> qnaList() {
		System.out.println("========== QnA List ==========");

		return sqlSession.selectList("QnAMapper.qnaList");
	}

	// Select QnA
	public List<QnADTO> selectQna(int q_id) {
		System.out.println("========== Select QnA ==========");

		return sqlSession.selectList("QnAMapper.selectQna", q_id);
	}

	// Update QnA
	public int updateQna(String q_id, String q_reply) {
		System.out.println("========== Update QnA DAO ==========");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("q_id", q_id);
		map.put("q_reply", q_reply);

		return sqlSession.update("QnAMapper.updateQna", map);
	}

	public int insertQna(String q_title, String q_uid, String q_content) {
		System.out.println("========== Insert QnA DAO ==========");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("q_title", q_title);
		map.put("q_uid", q_uid);
		map.put("q_content", q_content);

		return sqlSession.insert("QnAMapper.insertQna", map);
	}

	public List<QnADTO> userQnaList(String u_id) {
		System.out.println("========== User QnA List DAO ==========");

		return sqlSession.selectList("QnAMapper.userList", u_id);
	}

	public int deleteQna(int q_id) {
		System.out.println("========== Delete QnA DAO ==========");

		return sqlSession.delete("QnAMapper.deleteQna", q_id);
	}
}
