package com.spring.ex.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.CampDAO;

@Service
public class CampRegisterCommand {

	@Autowired
	private CampDAO dao;

	public int execute(Model model) {
		System.out.println("========== Equip Regiter Command Running ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String c_name = request.getParameter("c_name");
		String c_address = request.getParameter("c_address");
		String c_content = request.getParameter("c_content");

		int result = dao.campRegister(c_name, c_address, c_content);
		if (1 == result) {
			System.out.println("========== Regist Complete ==========");

			return result;
		} else {
			System.out.println("========== Regist Failed ==========");

			return result;
		}
	}
}
