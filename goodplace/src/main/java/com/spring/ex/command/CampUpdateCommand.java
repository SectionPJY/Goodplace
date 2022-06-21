package com.spring.ex.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.CampDAO;

@Service
public class CampUpdateCommand {

	@Autowired
	private CampDAO dao;

	public int execute(Model model) {
		System.out.println("========== Equip Update Command Running ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String c_id = request.getParameter("c_id");
		String c_name = request.getParameter("c_name");
		String c_price = request.getParameter("c_price");
		String c_address = request.getParameter("c_address");
		System.out.println("Update ID : " + c_id);

		int result = dao.updateCamp(c_id, c_name, c_price, c_address);
		if (1 == result) {
			System.out.println("========== Update Complete ==========");

			return result;
		} else {
			System.out.println("========== Update Failed ==========");

			return result;
		}
	}
}
