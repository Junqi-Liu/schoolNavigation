package com.ssm.navi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.navi.bean.User;
import com.ssm.navi.bean.User_H;
import com.ssm.navi.bean.User_HExample;

public interface User_HMapper {
	int addToH(List<User> list);
	
    int countByExample(User_HExample example);

    int deleteByExample(User_HExample example);

    int deleteByPrimaryKey(String userid);

    int insert(User_H record);

    int insertSelective(User_H record);

    List<User_H> selectByExample(User_HExample example);

    User_H selectByPrimaryKey(String userid);

    int updateByExampleSelective(@Param("record") User_H record, @Param("example") User_HExample example);

    int updateByExample(@Param("record") User_H record, @Param("example") User_HExample example);

    int updateByPrimaryKeySelective(User_H record);

    int updateByPrimaryKey(User_H record);
}