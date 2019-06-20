package com.ssm.navi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.navi.bean.Point;
import com.ssm.navi.dao.PointMapper;
import com.ssm.navi.service.IPointSV;

@Service
public class PointSVImpl implements IPointSV {
	private static String USTATE = "U";//静态数据
	private static String WSTATE = "W";
	private static String TYPE = "point";
	
	@Autowired
	private PointMapper pointDao;

	@Override
	public List<Point> getAll() {
		List<Point> pointList = pointDao.selectAll();
		return pointList;
	}

	@Override
	public List<Point> selectByDesc(String pointdesc) {
		List<Point> pointList = pointDao.selectByDesc(pointdesc);
		return pointList;
	}

	@Override
	public boolean savePoint(Point point) {
		point.setState(USTATE);
		point.setType(TYPE);
		pointDao.insert(point);
		return true;
	}

	@Override
	public boolean deleted(Integer pointid) {
		pointDao.deletePoint(pointid);
		return true;
	}

	@Override
	public Point getPointById(Integer pointid) {
		return pointDao.selectByPrimaryKey(pointid);
	}

	@Override
	public boolean updatePoint(Point point) {
		pointDao.updatePoint(point);
		return false;
	}

	@Override
	public boolean recoverPoint(Integer pointid) {
		pointDao.recoverPoint(pointid);
		return true;
	}

	@Override
	public boolean saveToPoint(Point point) {
		point.setState(WSTATE);
		point.setType(TYPE);
		pointDao.insert(point);
		return true;
	}

	@Override
	public boolean confirmPoint(Integer pointid) {
		pointDao.confirmPoint(pointid);
		return true;
	}

}
