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
public class PointController {
	
	@Autowired
	private IPointSV iPointSV;
	
	@RequestMapping("/getPointList")
	public String getPointList(@RequestParam(value="pageIndex",defaultValue="1") Integer i,Model m) {
		PageHelper.startPage(i,5);
		List<Point> pointList=iPointSV.getAll();
		PageInfo pageInfo=new PageInfo(pointList);
		m.addAttribute("pointPageList", pageInfo);
		return "pointList";
	}
	
	@RequestMapping("/selectByDesc")
	public String selectByDesc(Model m,String pointdesc) {
		List<Point> pointList=iPointSV.selectByDesc(pointdesc);
		PageInfo pageInfo=new PageInfo(pointList);
		m.addAttribute("pointPageList", pageInfo);
		return "pointList";
	}
	
	@RequestMapping("/pointAdd")
	public String addP(){
		return "pointAdd";
	}
	
	@RequestMapping("/getPoint")
	public String getPoint(){
		return "getPoint";
	}
	
	@RequestMapping("/pointToAdd")
	public String pointToAdd(){
		return "pointToAdd";
	}
	
	@RequestMapping("/savePoint")
	public String saveP(Point point){//新增坐标
		iPointSV.savePoint(point);
		return "redirect:getPointList";
	}
	
	@RequestMapping("/deletedPoint")
	public String deleted(Integer pointid){
		iPointSV.deleted(pointid);
		return "redirect:getPointList";	
	}
	
	@RequestMapping("/recoverPoint")
	public String recoverPoint(Integer pointid){
		iPointSV.recoverPoint(pointid);
		return "redirect:getPointList";	
	}
	
	@RequestMapping("/confirmPoint")
	public String confirmPoint(Integer pointid){
		iPointSV.confirmPoint(pointid);
		return "redirect:getPointList";	
	}
	
	@RequestMapping("/pointModify")
	private String modify(Integer pointid,Model m){
		Point point = iPointSV.getPointById(pointid);
		m.addAttribute("point",point);
		return "pointModify";
	}
	
	@RequestMapping("/updatePoint")
	public String updatePoint(Point point){
		iPointSV.updatePoint(point);
		return "redirect:getPointList";
	}

}
