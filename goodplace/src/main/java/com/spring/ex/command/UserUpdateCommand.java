package com.spring.ex.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.UserDAO;

@Service
public class UserUpdateCommand {

	@Autowired
	private UserDAO dao;

	public int execute(Model model) {
		System.out.println("========== User Update Command Running ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		String u_name = request.getParameter("u_name");
		String u_email = request.getParameter("u_email");
		String u_address = request.getParameter("u_address");
		String u_phone = request.getParameter("u_phone");
		System.out.println("Update ID : " + u_id);

		int result = dao.updateUser(u_id, u_pw, u_name, u_email, u_address, u_phone);
		if (1 == result) {
			System.out.println("========== Update Complete ==========");

			return result;
		} else {
			System.out.println("========== Update Failed ==========");

			return result;
		}
	}
}
