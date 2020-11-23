package com.qdu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.qdu.bean.User;
import com.qdu.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView userRegister(User user) {
		ModelAndView mav = new ModelAndView();
		List<User> commonNameList = userService.checkNameCommon(user);
		if(user.getUsername().length()<4 || user.getUsername().length()>16) {
			mav.setViewName("error");
			mav.addObject("errorMessage", "用户名应该在4-16位字符!");
			return mav;
		}
		else if(commonNameList.size() == 1) {
			mav.setViewName("error");
			mav.addObject("errorMessage", "用户名重复！!");
			return mav;
		}
		else if(!user.getPassword().matches("[0-9A-Za-z]{6,16}")) {
			mav.setViewName("error");
			mav.addObject("errorMessage", "密码只能包含字母和数字，且长度在6-16位！");
			return mav;
		}
		else if(user.getGender().equals("")) {
			mav.setViewName("error");
			mav.addObject("errorMessage", "性别不能为空！");
			return mav;
		}
		else if(!user.getEmail().matches("^(\\w+([-.][A-Za-z0-9]+)*){3,18}@\\w+([-.][A-Za-z0-9]+)*\\.\\w+([-.][A-Za-z0-9]+)*$")) {
			mav.setViewName("error");
			mav.addObject("errorMessage", "请填写正确的邮箱！");
			return mav;
		}
		else if(user.getPhone().matches("^1(3([0-35-9]\\d|4[1-8])|4[14-9]\\d|5([0-35689]\\d|7[1-79])|66\\d|7[2-35-8]\\d|8\\d{2}|9[13589]\\d)\\d{7}$")) {
			mav.setViewName("error");
			mav.addObject("errorMessage", "请填写正确的手机号！");
			return mav;
		}
		userService.userRegister(user);
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping(value = "/userLogin", method = RequestMethod.POST)
	public ModelAndView userLogin(User user) {
		ModelAndView mav = new ModelAndView();
		List<User> list = userService.checkUserLogin(user);
		if(list.size() == 1) {
			mav.setViewName("success");
			return mav;
		}
		mav.setViewName("error");
		mav.addObject("errorMessage", "用户名或者密码错误！");
		return mav;
	}
	
	
}
