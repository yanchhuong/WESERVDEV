package com.code.model;

public class CategoryBean_R001{ 
	private long catgid;  
	private String nm_eng;
	private String nm_kh;	
	private long parentid;	
	private String lvl;
	private long pid;
	private String usercd;	
	private int seq;
	private String regdate;
	private String catgcd;	
	private String catgparent;	
	private String randname;
	private String fullengname;
	private String fullkhname;

	public String getCatgcd() {
		return catgcd;
	}

	public void setCatgcd(String catgcd) {
		this.catgcd = catgcd;
	}

	public String getCatgparent() {
		return catgparent;
	}

	public void setCatgparent(String catgparent) {
		this.catgparent = catgparent;
	}


	public String getFullengname() {
		return fullengname;
	}

	public void setFullengname(String fullengname) {
		this.fullengname = fullengname;
	}

	public String getFullkhname() {
		return fullkhname;
	}

	public void setFullkhname(String fullkhname) {
		this.fullkhname = fullkhname;
	}

	public String getRandname() {
		return randname;
	}

	public void setRandname(String randname) {
		this.randname = randname;
	}

	

	public long getCatgid() {
		return catgid;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public void setParentid(long parentid) {
		this.parentid = parentid;
	}

	public void setCatgid(long catgid) {
		this.catgid = catgid;
	}
	public String getNm_eng() {
		return nm_eng;
	}

	public void setNm_eng(String nm_eng) {
		this.nm_eng = nm_eng;
	}

	public String getNm_kh() {
		return nm_kh;
	}

	public void setNm_kh(String nm_kh) {
		this.nm_kh = nm_kh;
	}

	public long getParentid() {
		return parentid;
	}

	
	public String getLvl() {
		return lvl;
	}

	public void setLvl(String lvl) {
		this.lvl = lvl;
	}

	public long getPid() {
		return pid;
	}

	public void setPid(long pid) {
		this.pid = pid;
	}

	public String getUsercd() {
		return usercd;
	}

	public void setUsercd(String usercd) {
		this.usercd = usercd;
	}

	
}  