package com.spring.ex.command;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.UserDAO;

@Service
public class RegistrationCommand {

	@Autowired
	private UserDAO dao;

	public int execute(Model model) {
		System.out.println("========== Registration Command Running ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String u_id = randomId();
		String u_pw = randomPw();
		String u_name = request.getParameter("u_name");
		String u_phone = request.getParameter("u_phone");
		String u_address = request.getParameter("u_address");

		int result = dao.registration(u_id, u_pw, u_name, u_phone, u_address);
		if (1 == result) {
			System.out.println("========== Registration Complete ==========");

			return result;
		} else {
			System.out.println("========== Registration Failed ==========");

			return result;
		}
	}

	public String randomId() {
		Random rnd = new Random();
		String result = "";
		for (int i = 0; i < 6; i++) {
			result += Integer.toString(rnd.nextInt(10));
			System.out.println(result);
		}
		return result;
	}

	public String randomPw() {
		Random rnd = new Random();
		String result = "";
		for (int i = 0; i < 6; i++) {
			result += Integer.toString(rnd.nextInt(10));
			System.out.println(result);
		}
		return result;
	}
}
