package com.ssm.navi.bean;

import java.io.Serializable;

public class User implements Serializable {
    private String userid;

    private String username;

    private String userpassword;

    private String state;

    private String permission;

    private String creatdate;

    private String changedate;

    private static final long serialVersionUID = 1L;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword == null ? null : userpassword.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission == null ? null : permission.trim();
    }

    public String getCreatdate() {
        return creatdate;
    }

    public void setCreatdate(String creatdate) {
        this.creatdate = creatdate == null ? null : creatdate.trim();
    }

    public String getChangedate() {
        return changedate;
    }

    public void setChangedate(String changedate) {
        this.changedate = changedate == null ? null : changedate.trim();
    }
}