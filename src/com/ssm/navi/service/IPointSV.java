package com.ssm.navi.service;

import java.util.List;

import com.ssm.navi.bean.Point;

public interface IPointSV {
	
	public List<Point> getAll();

	public List<Point> selectByDesc(String pointdesc);

	public boolean savePoint(Point point);

	public boolean deleted(Integer pointid);

	public Point getPointById(Integer pointid);

	public boolean updatePoint(Point point);

	public boolean recoverPoint(Integer pointid);

	public boolean saveToPoint(Point point);

	public boolean confirmPoint(Integer pointid);

}
