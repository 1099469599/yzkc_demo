package com.model;

public class comment {
    private Integer oid;

    private String comname;

    private Integer comid;

    private String cominfo;

    private String comimage;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getComname() {
        return comname;
    }

    public void setComname(String comname) {
        this.comname = comname == null ? null : comname.trim();
    }

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getCominfo() {
        return cominfo;
    }

    public void setCominfo(String cominfo) {
        this.cominfo = cominfo == null ? null : cominfo.trim();
    }

    public String getComimage() {
        return comimage;
    }

    public void setComimage(String comimage) {
        this.comimage = comimage == null ? null : comimage.trim();
    }
}