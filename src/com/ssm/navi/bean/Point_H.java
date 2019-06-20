package com.ssm.navi.bean;

import java.io.Serializable;

public class Point_H implements Serializable {
    private Integer pointid;

    private String longitude;

    private String latitude;

    private String pointdesc;

    private String type;

    private String state;

    private static final long serialVersionUID = 1L;

    public Integer getPointid() {
        return pointid;
    }

    public void setPointid(Integer pointid) {
        this.pointid = pointid;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude == null ? null : longitude.trim();
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude == null ? null : latitude.trim();
    }

    public String getPointdesc() {
        return pointdesc;
    }

    public void setPointdesc(String pointdesc) {
        this.pointdesc = pointdesc == null ? null : pointdesc.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }
}