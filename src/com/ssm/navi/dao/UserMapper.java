package com.ssm.navi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.navi.bean.User;
import com.ssm.navi.bean.UserExample;

public interface UserMapper {
	int deleteH();
	
	List<User> selectH();
	
	int updateUser(User user);
	
	int deleteUser(User user);
	
	List<User> selectByUserName(String username);
	
	List<User> selectAllUser();
	
	int register(User user);
	
	User checkLogin(User user);
	
    int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(String userid);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(String userid);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

}