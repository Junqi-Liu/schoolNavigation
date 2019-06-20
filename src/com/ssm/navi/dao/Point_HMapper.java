package com.ssm.navi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.navi.bean.Point;
import com.ssm.navi.bean.Point_H;
import com.ssm.navi.bean.Point_HExample;

public interface Point_HMapper {
	int addToH(List<Point> pointList);
	
    int countByExample(Point_HExample example);

    int deleteByExample(Point_HExample example);

    int deleteByPrimaryKey(Integer pointid);

    int insert(Point_H record);

    int insertSelective(Point_H record);

    List<Point_H> selectByExample(Point_HExample example);

    Point_H selectByPrimaryKey(Integer pointid);

    int updateByExampleSelective(@Param("record") Point_H record, @Param("example") Point_HExample example);

    int updateByExample(@Param("record") Point_H record, @Param("example") Point_HExample example);

    int updateByPrimaryKeySelective(Point_H record);

    int updateByPrimaryKey(Point_H record);
}