package com.spring.ex.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.UserDAO;

@Service
public class LoginCheckCommand {

	@Autowired
	private UserDAO dao;

	public int executeAdmin(Model model) {
		System.out.println("========== Login Check Command Running ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String mode = request.getParameter("mode");
		
		int result = dao.loginCheck(id, pw, mode);
		System.out.println("========== Login Check Command Complete ==========");

		if (1 == result) {
			System.out.println("========== Login Success ==========");
			System.out.println("========== Session Create ==========");

			session.setAttribute("e_id", id);
			session.setAttribute("e_pw", pw);

			System.out.println("========== Session Create Success ==========");

			return result;
		} else {
			System.out.println("========== Login Failed ==========");

			return result;
		}
	}
	
	public int executeMember(Model model) {
		System.out.println("========== Login Check Command Running ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String mode = request.getParameter("mode");
		
		int result = dao.loginCheck(id, pw, mode);
		System.out.println("========== Login Check Command Complete ==========");

		if (1 == result) {
			System.out.println("========== Login Success ==========");
			System.out.println("========== Session Create ==========");

			session.setAttribute("u_id", id);
			session.setAttribute("u_pw", pw);

			System.out.println("========== Session Create Success ==========");

			return result;
		} else {
			System.out.println("========== Login Failed ==========");

			return result;
		}
	}
}
