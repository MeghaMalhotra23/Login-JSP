package com.mm.UserDTO;

public class UserDto {
	private String username;
	private String password;
	private String fname;
	private String lname;
	public UserDto(String username, String password, String fname, String lname) {
		super();
		this.username = username;
		this.password = password;
		this.fname = fname;
		this.lname = lname;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public UserDto(String username,String pass){
		this.username=username;
		password=pass;
	}
}
