package com.ssm.navi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.navi.bean.User;
import com.ssm.navi.service.IUserSV;

@Controller
public class UserController {

	@Autowired
	private IUserSV iUserSV;

	@RequestMapping("/getUserList") // 用户列表
	public String preLogin(@RequestParam(value = "pageIndex", defaultValue = "1") Integer i, Model m) {
		PageHelper.startPage(i, 5);
		List<User> userList = iUserSV.selectAll();
		PageInfo pageInfo = new PageInfo(userList);
		m.addAttribute("userPageList", pageInfo);
		return "userList";
	}

	@RequestMapping(value = "/selectByUserName")
	public String selectByOne(String username, Model m) {// 通过用户名查找用户
		List<User> userList = iUserSV.getOne(username);
		PageInfo pageInfo = new PageInfo(userList);
		m.addAttribute("userPageList", pageInfo);
		return "userList";
	}

	@RequestMapping("/deletedUser")
	public String deleted(String userid) {// 删除用户
		iUserSV.deleted(userid);
		return "redirect:getUserList";
	}

	@RequestMapping("/userModify")
	private String modify(String userid, Model m) {// 进入修改用户界面
		User user = iUserSV.getUserById(userid);
		m.addAttribute("user", user);
		return "userModify";
	}

	@RequestMapping("/updateUser")
	public String updateBook(User user) {// 保存修改信息
		iUserSV.updateUser(user);
		return "redirect:getUserList";
	}

}
