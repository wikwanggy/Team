package org.Mongle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class signupController {
	@RequestMapping(value = "/signup/signup", method = RequestMethod.GET)
	// 회원가입.
	public String signup() {
		return "signup/signup";
	}
}
