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

	public UserDTO makeSession(String id, String pw) {
		StringBuffer LOGIN_QUERY = new StringBuffer();
		LOGIN_QUERY.append("SELECT u_id, u_pw, u_name, u_email, u_address, u_phone ");
		LOGIN_QUERY.append("FROM g_user ");
		LOGIN_QUERY.append("WHERE u_id=? AND u_pw=?");
		UserDTO dto = null;

		try {
			System.out.println("========== Connection Connect ==========");
			connect();

			pstmt = con.prepareStatement(LOGIN_QUERY.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			System.out.println("========== ExecuteQuery Success ==========");

			dto = new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6));
			System.out.println("========== DTO Create ==========");

			return dto;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			System.out.println("========== Connection Close ==========");
			closeAll();
		}

		return dto;
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
