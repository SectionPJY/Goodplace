package com.spring.goodplace.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.goodplace.dto.UserDTO;

@Service
public class UserDAO extends AbstractDAO {

	@Autowired
	private SqlSession sqlSession;

	public List<UserDTO> userList() {
		System.out.println("========== List ==========");
		System.out.println(sqlSession.getConfiguration());
		System.out.println(sqlSession.getConnection());

		return sqlSession.selectList("UserMapper.userList");
	}

	public int loginCheck(String id, String pw) {
		System.out.println("========== Login Check ==========");
		System.out.println("ID : " + id + ", PW : " + pw);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("u_id", id);
		map.put("u_pw", pw);

		return sqlSession.selectOne("UserMapper.userLogin", map);
	}

	public int signupCheck(String id, String pw, String name) {
		System.out.println("========== SignUp Check ==========");
		System.out.println("ID : " + id + ", PW : " + pw + ", 이름 : " + name);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("u_id", id);
		map.put("u_pw", pw);
		map.put("u_name", name);

		return sqlSession.insert("UserMapper.signUp", map);
	}
}
