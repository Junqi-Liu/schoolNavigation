package com.ssm.navi.service;

import com.ssm.navi.bean.User;

public interface IUserLoginSV {
	
	public boolean checkLogin(User user);
	
	public User getUserById(String userId);

	public boolean checkRegister(User user);

	public int ToUserH();
	
	public int ToPointH();

}
