package com.spring.goodplace.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.goodplace.dao.UserDAO;
import com.spring.goodplace.dto.UserDTO;

@Service
public class UserListCommand {
	@Autowired
	UserDAO dao;

	public void execute(Model model) {
		List<UserDTO> dtos = dao.userList();
		model.addAttribute("dtos", dtos);
	}
}
