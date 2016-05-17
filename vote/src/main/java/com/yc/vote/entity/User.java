package com.yc.vote.entity;

import java.io.Serializable;

public class User {

	private String userId;
	private String userName;
	private String password;
	private int status = 1;
	private int version;
	private String confirmPassword;

	public User() {

	}

	public User(String userName) {
		this.userName = userName;
	}

	public User(String userId, String password) {
		this.userId = userId;
		this.password = password;
	}

	public User(String userId, String userName, String password, int status,
			int version, String confirmPassword) {
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.status = status;
		this.version = version;
		this.confirmPassword = confirmPassword;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", password=" + password + ", status=" + status
				+ ", version=" + version + ", confirmPassword="
				+ confirmPassword + "]";
	}

}
