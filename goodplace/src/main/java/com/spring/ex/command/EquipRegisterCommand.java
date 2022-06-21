package com.spring.ex.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.EquipDAO;

@Service
public class EquipRegisterCommand {

	@Autowired
	private EquipDAO dao;

	public int execute(Model model) {
		System.out.println("========== Equip Regiter Command Running ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String p_name = request.getParameter("p_name");
		String p_content = request.getParameter("p_content");
		String p_kind = request.getParameter("p_kind");
		String p_price = request.getParameter("p_price");

		int result = dao.equipRegister(p_name, p_content, p_kind, p_price);
		if (1 == result) {
			System.out.println("========== Regist Complete ==========");

			return result;
		} else {
			System.out.println("========== Regist Failed ==========");

			return result;
		}
	}
}
