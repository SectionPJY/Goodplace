package com.spring.goodplace.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.spring.goodplace.dao.UserDAO;
import com.spring.goodplace.dto.UserDTO;

public class LoginCheckCommand {
	
	@Autowired
	private SqlSession sqlSession;
	
	boolean result;
	
	public boolean execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		UserDAO dao = new UserDAO();
		result = dao.loginCheck(id, pw);
		
		if(true == result) {
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
		}
		
		
		return result;
	}
}
