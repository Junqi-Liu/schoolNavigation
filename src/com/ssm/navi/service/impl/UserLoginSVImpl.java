package com.ssm.navi.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.navi.bean.Point;
import com.ssm.navi.bean.User;
import com.ssm.navi.dao.PointMapper;
import com.ssm.navi.dao.Point_HMapper;
import com.ssm.navi.dao.UserMapper;
import com.ssm.navi.dao.User_HMapper;
import com.ssm.navi.service.IUserLoginSV;

@Service
public class UserLoginSVImpl implements IUserLoginSV {
	private static String state = "U";//静态数据
	private static String permission = "1";
	private Logger logger = Logger.getLogger(UserLoginSVImpl.class);
	
	@Autowired
	private UserMapper userDao;
	
	@Autowired
	private User_HMapper userHDao;
	
	@Autowired
	private PointMapper pointDao;
	
	@Autowired
	private Point_HMapper pointHDao;

	@Override
	public boolean checkLogin(User user) {
		User u = userDao.checkLogin(user);
		return null==u?false:true;
	}

	@Override
	public User getUserById(String userId) {
		User u = userDao.selectByPrimaryKey(userId);
		return u;
	}

	@Override
	public boolean checkRegister(User user) {
		Date t = new Date();//获取当前时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//初始化时间格式
		User u = userDao.selectByPrimaryKey(user.getUserid());
		if(null==u) {//检验用户ID是否存在
			user.setState(state);//默认状态U可用
			user.setPermission(permission);//默认权限普通用户
			user.setCreatdate(df.format(t));//设置创建时间
			user.setChangedate(df.format(t));
			userDao.register(user);//执行插入
			return true;
		}
		return false;
	}

	@Override
	public int ToUserH() {
		List<User> userList = userDao.selectH();
		if(0==userList.size()) {
			logger.info("---------------------------没有过期的用户信息---------------------------");
			return 0;
		}else {
			logger.info("----------------------------开始检索过期的用户信息------------------------");
			userHDao.addToH(userList);
			userDao.deleteH();
			logger.info("------------------------你好，已经把"+userList.size()+"条过期的用户数据移至历史用户表-------------------------");
			return userList.size();
		}
	}

	@Override
	public int ToPointH() {
		List<Point> pointList = pointDao.selectH();
		if(0==pointList.size()) {
			logger.info("---------------------------没有过期的坐标信息---------------------------");
			return 0;
		}else {
			logger.info("---------------------------开始检索过期的坐标信息---------------------------");
			pointHDao.addToH(pointList);
			pointDao.deleteH();
			logger.info("----------------------你好，已经把"+pointList.size()+"条过期的坐标数据移至历史坐标表-------------------------");
			return pointList.size();
		}
	}

}
