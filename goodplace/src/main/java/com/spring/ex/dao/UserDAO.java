package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dto.UserDTO;

@Service
public class UserDAO {

	@Autowired
	private SqlSession sqlSession;

	// DB연결용 리스트 출력
	public List<UserDTO> userList() {
		System.out.println("========== List ==========");
		System.out.println(sqlSession.getConfiguration());
		System.out.println(sqlSession.getConnection());

		return sqlSession.selectList("UserMapper.userList");
	}

	// 로그인 체크
	public int loginCheck(String id, String pw, String mode) {
		System.out.println("========== Login Check ==========");
		System.out.println("ID : " + id + ", PW : " + pw);
		if (mode.equals("admin")) {
			System.out.println("========== Admin Account Login ==========");

			HashMap<String, String> map = new HashMap<String, String>();
			map.put("e_id", id);
			map.put("e_pw", pw);

			return sqlSession.selectOne("UserMapper.adminLogin", map);
		} else if (mode.equals("member")) {
			System.out.println("========== User Account Login ==========");

			HashMap<String, String> map = new HashMap<String, String>();
			map.put("u_id", id);
			map.put("u_pw", pw);

			return sqlSession.selectOne("UserMapper.userLogin", map);
		} else {

			return 0;
		}

	}

	// 회원가입
	public int signupCheck(String id, String pw, String name, String email, String address, String phone) {
		System.out.println("========== SignUp Check ==========");
		System.out.println("ID : " + id + ", PW : " + pw + ", 이름 : " + name);
		System.out.println("이메일 : " + email + ", 주소 : " + address + ", 핸드폰 : " + phone);

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("u_id", id);
		map.put("u_pw", pw);
		map.put("u_name", name);
		map.put("u_email", email);
		map.put("u_address", address);
		map.put("u_phone", phone);

		return sqlSession.insert("UserMapper.signUp", map);

	}

	public int registration(String id, String pw, String name, String phone, String address) {
		System.out.println("========== Registration DAO ==========");

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("u_id", id);
		map.put("u_pw", pw);
		map.put("u_name", name);
		map.put("u_address", address);
		map.put("u_phone", phone);

		return sqlSession.insert("UserMapper.registration", map);
	}

	public List<UserDTO> userInfo(String id, String pw) {
		System.out.println("========== UserInfo Loading ==========");
		System.out.println("ID : " + id + ", PW : " + pw);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("u_id", id);
		map.put("u_pw", pw);

		System.out.println("========== UserInfo Loading Success ==========");

		return sqlSession.selectList("UserMapper.userInfo", map);
	}

	// ID 중복검사
	public Integer idDupCheck(String id) {
		System.out.println("========== ID Duplication Start ==========");
		System.out.println("Duplication ID : " + id);

		return sqlSession.selectOne("UserMapper.idDupCheck", id);
	}

	// 회원 삭제
	public Integer deleteUser(String u_id) {
		System.out.println("========== User Delete Start ==========");
		System.out.println("Deleted ID : " + u_id);

		return sqlSession.delete("UserMapper.deleteUser", u_id);
	}

	// 회원 수정
	public Integer updateUser(String u_id, String u_pw, String u_name, String u_email, String u_address,
			String u_phone) {
		System.out.println("========== Update User DAO ==========");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("u_pw", u_pw);
		map.put("u_name", u_name);
		map.put("u_email", u_email);
		map.put("u_address", u_address);
		map.put("u_phone", u_phone);

		return sqlSession.update("UserMapper.updateUser", map);
	}
}
