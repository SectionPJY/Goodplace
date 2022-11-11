package com.spring.ex.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.UserDAO;
import com.spring.ex.dto.UserDTO;

@Service
public class UserInformationCommand {

	@Autowired
	private UserDAO dao;

	public List<UserDTO> execute(Model model) {
		System.out.println("========== UserInfoCommand Running ==========");
		Map<String, Object> map = model.asMap();

		String u_id = (String) map.get("u_id");
		String u_pw = (String) map.get("u_pw");

		System.out.println("ID : " + u_id + ", PW : " + u_pw);
		
		List<UserDTO> userInfo = dao.userInfo(u_id, u_pw);
		model.addAttribute("userInfo", userInfo);
		return userInfo;
	}

}
