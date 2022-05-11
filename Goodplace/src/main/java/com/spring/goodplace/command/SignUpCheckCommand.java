package com.spring.goodplace.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.spring.goodplace.dao.UserDAO;

public class SignUpCheckCommand implements AbstractCommand {
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");

		UserDAO dao = new UserDAO();
		dao.signUp(id, pw, name);
	}
}
