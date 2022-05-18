package com.spring.goodplace.command;

import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.goodplace.dao.UserDAO;
import com.spring.goodplace.dto.UserDTO;

@Service
public class LoginCheckCommand {

	@Autowired
	private SqlSession sqlSession;

	@Autowired
	private UserDAO dao;

	public int execute(Model model) {
		System.out.println("===== Login Check Command Running");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		int result = dao.loginCheck(id, pw);
		System.out.println("===== Login Check Command Complete =====");

		if (1 == result) {
			System.out.println("===== Session Create =====");
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);

			Enumeration<?> attrName = session.getAttributeNames();
			while (attrName.hasMoreElements()) {
				String attr = (String) attrName.nextElement();
				System.out.println(session.getAttribute(attr));
			}

			return result;
		} else {

			return result;
		}
	}
}
