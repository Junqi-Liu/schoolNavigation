package com.ssm.navi.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ssm.navi.bean.Point;
import com.ssm.navi.service.IMapApiSV;

@RestController
public class MapApiController {
	
	@Autowired
	private IMapApiSV iPointSV;
	
	@RequestMapping(value="/api/getCenterPoint")
	public void getCenterPoint(HttpServletResponse response) throws IOException {
		List<Point> pList = iPointSV.getCenter();
		JSONArray json = new JSONArray();
        for(Point pointList : pList){
            JSONObject jo = new JSONObject();
            jo.put("pointId", pointList.getPointid());
            jo.put("longitude", pointList.getLongitude());
            jo.put("latitude", pointList.getLatitude());
            jo.put("pointdesc", pointList.getPointdesc());
            jo.put("type", pointList.getType());
            json.put(jo);
        }
        response.setContentType("application/json; charset=UTF-8");
        response.getWriter().write(json.toString());
	}
	
	@RequestMapping(value="/api/getPoint")
	public void getPoint(HttpServletResponse response) throws IOException {
		List<Point> pList = iPointSV.getPoint();
		JSONArray json = new JSONArray();
        for(Point pointList : pList){
            JSONObject jo = new JSONObject();
            jo.put("pointId", pointList.getPointid());
            jo.put("longitude", pointList.getLongitude());
            jo.put("latitude", pointList.getLatitude());
            jo.put("pointdesc", pointList.getPointdesc());
            jo.put("type", pointList.getType());
            json.put(jo);
        }
        response.setContentType("application/json; charset=UTF-8");
        response.getWriter().write(json.toString());
	}

}
