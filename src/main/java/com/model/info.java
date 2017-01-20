package com.model;

public class info {
    private Integer id;

    private String cname;

    private String ctype;

    private String cinfof;

    private String cinfos;

    private String cinfot;

    private String cimage;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public String getCtype() {
        return ctype;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype == null ? null : ctype.trim();
    }

    public String getCinfof() {
        return cinfof;
    }

    public void setCinfof(String cinfof) {
        this.cinfof = cinfof == null ? null : cinfof.trim();
    }

    public String getCinfos() {
        return cinfos;
    }

    public void setCinfos(String cinfos) {
        this.cinfos = cinfos == null ? null : cinfos.trim();
    }

    public String getCinfot() {
        return cinfot;
    }

    public void setCinfot(String cinfot) {
        this.cinfot = cinfot == null ? null : cinfot.trim();
    }

    public String getCimage() {
        return cimage;
    }

    public void setCimage(String cimage) {
        this.cimage = cimage == null ? null : cimage.trim();
    }
}