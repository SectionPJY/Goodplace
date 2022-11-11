package com.spring.ex.command;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.UserDAO;

@Service
public class IdDuplicationCheckCommand {

	@Autowired
	private UserDAO dao;

	public int execute(String id) {
		System.out.println("========== ID Duplication Check Command Running ==========");
		System.out.println("ID : " + id);

		int result = dao.idDupCheck(id);
		if (1 == result) {
			System.out.println("========== " + id + " is Duplicate ==========");

			return 1;
		} else if (result < 0) {
			System.out.println("========== Error ==========");

			return -1;
		} else {
			System.out.println("========== " + id + " is Available ==========");

			return 0;
		}
	}
}
