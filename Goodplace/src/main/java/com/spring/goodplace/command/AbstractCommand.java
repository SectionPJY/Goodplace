package com.spring.goodplace.command;

import org.springframework.ui.Model;

public interface AbstractCommand {
	public void execute(Model model);
}
