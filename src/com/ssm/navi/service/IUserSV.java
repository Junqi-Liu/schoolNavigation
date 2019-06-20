package com.ssm.navi.service;

import java.util.List;

import com.ssm.navi.bean.User;

public interface IUserSV {

	public List<User> selectAll();

	public List<User> getOne(String username);

	public boolean deleted(String userid);

	public User getUserById(String userid);

	public boolean updateUser(User user);

}
