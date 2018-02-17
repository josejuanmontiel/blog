package com.example.demo;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DemoController {

	@RequestMapping("/setcookie")
	public String greeting(
			@RequestParam(value = "rp", required = false) String reqparam,
			@RequestParam(value = "sp", required = false) String sesparam,
			@RequestParam(value = "cp", required = false) String cookiparam,
			HttpSession session,
 			HttpServletResponse response, 
			Model model) {

		model.addAttribute("rp", reqparam);
	    session.setAttribute("sp", sesparam);
	       
        Cookie newCookie = new Cookie("cp", cookiparam);
        newCookie.setMaxAge(24 * 60 * 60);
        response.addCookie(newCookie);		
		
		return "greeting";
	}

}