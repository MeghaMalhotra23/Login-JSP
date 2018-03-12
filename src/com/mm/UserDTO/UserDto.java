package com.mm.UserDTO;

public class UserDto {
	private String username;
	private String password;
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
