package cn.c.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HelloController {
	
	@RequestMapping(value="/hello", method=RequestMethod.GET)
	public String pringHello(Model model) {
		// luan ma!!? she zhi --> windeow - Preferences - General - Workspase - Test file encoding - Other : UTF-8
		model.addAttribute("message", "Spring MVC 例子!");
		return "hello";
	}

}
