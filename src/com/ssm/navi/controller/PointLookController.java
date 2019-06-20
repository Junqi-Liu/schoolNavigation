package com.ssm.navi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.navi.bean.Point;
import com.ssm.navi.service.IPointSV;

@Controller
public class PointLookController {
	
	@Autowired
	private IPointSV iPointSV;
	
	@RequestMapping("/getPointLookList")
	public String getPointList(@RequestParam(value="pageIndex",defaultValue="1") Integer i,Model m) {
		PageHelper.startPage(i,5);
		List<Point> pointList=iPointSV.getAll();
		PageInfo pageInfo=new PageInfo(pointList);
		m.addAttribute("pointPageList", pageInfo);
		return "pointLookList";
	}
	
	@RequestMapping("/selectByDescp")
	public String selectByDesc(Model m,String pointdesc) {
		List<Point> pointList=iPointSV.selectByDesc(pointdesc);
		PageInfo pageInfo=new PageInfo(pointList);
		m.addAttribute("pointPageList", pageInfo);
		return "pointLookList";
	}
	
	@RequestMapping("/saveToPoint")
	public String saveToP(Point point){//新增审核坐标
		iPointSV.saveToPoint(point);
		return "redirect:getPointLookList";
	}

}
