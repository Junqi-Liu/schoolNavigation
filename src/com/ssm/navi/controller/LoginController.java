package com.ssm.navi.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.navi.bean.User;
import com.ssm.navi.service.IUserLoginSV;

@Controller
public class LoginController {
	
	private static String DoDate = "05";
	private Logger logger = Logger.getLogger(LoginController.class);
	
	@Autowired
	private IUserLoginSV loginSV;
	
	
	@RequestMapping("/forLogin")
	public String Login(){//进入登陆界面
		Date t = new Date();//获取当前时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//初始化时间格式
		if(DoDate.equals(df.format(t).toString().substring(8, 10))) {
			logger.info("------------------------------------------进程开始启动------------------------------");
			loginSV.ToUserH();
			loginSV.ToPointH();
			logger.info("------------------------------------------进程运行结束------------------------------");
		}else {
			logger.info("------------------------------------当前不是进程启动日期-----------------------------------");
		}
		return "login";
	}
	
	@RequestMapping("/forNavigation")
	public String Navigation(){//免注册直接进入导航
		return "navigation";
	}
	
	@RequestMapping("/checkLogin")
	public String login(HttpSession session,Model m,User user){//进行登陆验证
		if(loginSV.checkLogin(user)){
			user.setPermission(loginSV.getUserById(user.getUserid()).getPermission());
			session.setAttribute("user", user);
			m.addAttribute("user",user);
			return "index";//登陆成功，进入主页
		}
		m.addAttribute("msg1", "用户ID或密码不正确");//失败，提示错误消息
		return "login";
	}
	
	@RequestMapping("/register")
	public String register(){//进入注册界面
		return "register";
	}
	
	@RequestMapping("/userRegister")
	public String userRegiste(Model m,User user){//进行注册验证
		if(loginSV.checkRegister(user)){
			m.addAttribute("msg2", "注册成功，请登录");//注册成功，提示消息
			return "login";//注册成功，进入登陆界面
		}
		m.addAttribute("msg3", "该用户ID已存在，请重新注册");//失败，提示错误消息
		return "register";
	}

}
