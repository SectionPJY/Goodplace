package com.spring.ex.command;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.UserDAO;

@Service
public class UserDeleteCommand {

	@Autowired
	private UserDAO dao;
	
	public int execute(String u_id) {
		System.out.println("========== User Delete Command Running ==========");
		System.out.println("Delete ID : " + u_id);
		
		int result = dao.deleteUser(u_id);
		
		return result;
	}
}
