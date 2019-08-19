package com.zzxx.music.beans;

public class User {
	// 用户名
	private String username;
	// 密码
	private String password;
	// 邮箱地址
	private String email;
	// 手机号码
	private String mobilenumber;
	// id好，UUID生成
	private String uuid;
	
	public User() {
		super();
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", email=" + email + ", mobilenumber="
				+ mobilenumber + ", uuid=" + uuid + "]";
	}

	

}
