package com.spring.goodplace.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.goodplace.dto.UserDTO;

@Repository
public class UserDAO extends AbstractDAO {

	private String driver = "org.mariadb.jdbc.Driver";

	@Autowired
	private SqlSession sqlSession;

	public List<UserDTO> userList() {
		System.out.println("===== List =====");
		System.out.println(sqlSession.getConfiguration());
		System.out.println(sqlSession.getConnection());

		return sqlSession.selectList("UserMapper.userList");
	}

	public boolean loginCheck(String id, String pw) {
		boolean result = false;

		try {
			connect();
			System.out.println("===== Connect =====");

			StringBuilder LOGIN_CHECK_QUERY = new StringBuilder();
			LOGIN_CHECK_QUERY.append("SELECT * ");
			LOGIN_CHECK_QUERY.append("FROM g_user ");
			LOGIN_CHECK_QUERY.append("WHERE u_id=? AND u_pw=?");

			pstmt = con.prepareStatement(LOGIN_CHECK_QUERY.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				System.out.println("===== Checking Success =====");
				id = rs.getString("u_id");
				pw = rs.getString("u_pw");

				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}

		return result;
	}

	public void signUp(String id, String pw, String name) {
		try {
			connect();
			System.out.println("===== Connect =====");

			StringBuilder SIGNUP_QUERY = new StringBuilder();
			SIGNUP_QUERY.append("INSERT INTO g_user(u_id, u_pw, u_name) ");
			SIGNUP_QUERY.append("VALUES(?, ?, ?)");

			pstmt = con.prepareStatement(SIGNUP_QUERY.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
	}
}
