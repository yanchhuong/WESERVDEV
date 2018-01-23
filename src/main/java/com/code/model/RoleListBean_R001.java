package com.code.model;
/*@Entity(name = "RoleListBean")
@Table(name="roles_list")*/
public class RoleListBean_R001{
	private static final long serialVersionUID = 1L;
	private long id;
	private String role;	
	private String regdate;
	private String usercd;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getUsercd() {
		return usercd;
	}
	public void setUsercd(String usercd) {
		this.usercd = usercd;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
