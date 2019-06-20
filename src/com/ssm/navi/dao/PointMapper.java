package com.ssm.navi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.navi.bean.Point;
import com.ssm.navi.bean.PointExample;

public interface PointMapper {
	int confirmPoint(Integer pointid);
	
	int recoverPoint(Integer pointid);
	
	int deleteH();
	
	List<Point> selectH();
	
	int deletePoint(Integer pointid);
	
	int updatePoint(Point point);
	
	List<Point> selectByDesc(String pointdesc);
	
	List<Point> selectAll();
	
	List<Point> selectPoint();
	
	List<Point> selectCenter();

    int countByExample(PointExample example);

    int deleteByExample(PointExample example);

    int deleteByPrimaryKey(Integer pointid);

    int insert(Point record);

    int insertSelective(Point record);

    List<Point> selectByExample(PointExample example);

    Point selectByPrimaryKey(Integer pointid);

    int updateByExampleSelective(@Param("record") Point record, @Param("example") PointExample example);

    int updateByExample(@Param("record") Point record, @Param("example") PointExample example);

    int updateByPrimaryKeySelective(Point record);

    int updateByPrimaryKey(Point record);
}