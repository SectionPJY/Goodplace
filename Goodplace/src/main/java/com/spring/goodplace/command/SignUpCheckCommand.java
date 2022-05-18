package com.spring.goodplace.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.goodplace.dao.UserDAO;
import com.spring.goodplace.dto.UserDTO;

@Service
public class SignUpCheckCommand {

	@Autowired
	private SqlSession sqlSession;

	@Autowired
	private UserDAO dao;

	public int execute(Model model) {
		System.out.println("========== SignUp Check Command Running ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");

		int result = dao.signupCheck(id, pw, name);
		System.out.println("========== SignUp Check Command Complete ==========");

		if (1 == result) {
			System.out.println("========== SignUp Success ==========");

			return result;
		} else {
			System.out.println("========== SignUp Failed ==========");

			return result;
		}
	}
}
