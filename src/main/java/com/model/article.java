package com.model;

public class article {
	private Integer aid;

	private String aname;

	private String ainfo;

	private String atime;

	private String atype;

	private Integer aup;

	private Integer adown;

	private String adetail;

	private Integer pid;

	public Integer getAid() {
		return aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname == null ? null : aname.trim();
	}

	public String getAinfo() {
		return ainfo;
	}

	public void setAinfo(String ainfo) {
		this.ainfo = ainfo == null ? null : ainfo.trim();
	}

	public String getAtime() {
		return atime;
	}

	public void setAtime(String atime) {
		this.atime = atime == null ? null : atime.trim();
	}

	public String getAtype() {
		return atype;
	}

	public void setAtype(String atype) {
		this.atype = atype == null ? null : atype.trim();
	}

	public Integer getAup() {
		return aup;
	}

	public void setAup(Integer aup) {
		this.aup = aup;
	}

	public Integer getAdown() {
		return adown;
	}

	public void setAdown(Integer adown) {
		this.adown = adown;
	}

	public String getAdetail() {
		return adetail;
	}

	public void setAdetail(String adetail) {
		this.adetail = adetail == null ? null : adetail.trim();
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}
}