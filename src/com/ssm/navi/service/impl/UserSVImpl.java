package com.ssm.navi.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.navi.bean.User;
import com.ssm.navi.dao.UserMapper;
import com.ssm.navi.service.IUserSV;

@Service
public class UserSVImpl implements IUserSV {
	private static String Estate = "E";//静态数据
	
	@Autowired
	private UserMapper userDao;

	@Override
	public List<User> selectAll() {
		List<User> userList = userDao.selectAllUser();
		return userList;
	}

	@Override
	public List<User> getOne(String username) {
		List<User> userList = userDao.selectByUserName(username);
		return userList;
	}

	@Override
	public boolean deleted(String userid) {
		Date t = new Date();//获取当前时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//初始化时间格式
		User user = new User();
		user.setUserid(userid);
		user.setState(Estate);
		user.setChangedate(df.format(t));
		userDao.deleteUser(user);
		return true;
	}

	@Override
	public User getUserById(String userid) {
		return userDao.selectByPrimaryKey(userid);
	}

	@Override
	public boolean updateUser(User user) {
		Date t = new Date();//获取当前时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//初始化时间格式
		user.setChangedate(df.format(t));
		userDao.updateUser(user);
		return true;
	}

}
