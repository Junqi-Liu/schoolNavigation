package com.ssm.navi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.navi.bean.Point;
import com.ssm.navi.dao.PointMapper;
import com.ssm.navi.service.IMapApiSV;

@Service
public class MapApiSVImpl implements IMapApiSV {
	
	@Autowired
	private PointMapper pointDao;

	@Override
	public List<Point> getCenter() {
		List<Point> pointList = pointDao.selectCenter();
		return pointList;
	}

	@Override
	public List<Point> getPoint() {
		List<Point> pointList = pointDao.selectPoint();
		return pointList;
	}

}
