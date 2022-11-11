package com.spring.ex.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.UserDAO;
import com.spring.ex.dto.UserDTO;

@Service
public class SignUpCheckCommand {

	@Autowired
	private UserDAO dao;

	@Autowired
	private IdDuplicationCheckCommand idCheck;

	public int execute(Model model) {
		System.out.println("========== SignUp Check Command Running ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		String u_name = request.getParameter("u_name");
		String u_email = request.getParameter("u_email");
		String u_address = request.getParameter("u_address");
		String u_phone = request.getParameter("u_phone");
		
		int result = dao.signupCheck(u_id, u_pw, u_name, u_email, u_address, u_phone);
		if (1 == result) {
			System.out.println("========== SignUp Success ==========");

			return result;
		} else {
			System.out.println("========== SignUp Failed ==========");

			return result;
		}

	}
}
