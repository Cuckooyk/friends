package com.yc.vote.entity;

import java.util.Set;

public class Item {
	private int id;// 投票id
	private int voId;// 选项id
	private int vsid;// 投票主题id
	private String userId;// 用户信息

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getVoId() {
		return voId;
	}

	public void setVoId(int voId) {
		this.voId = voId;
	}

	public int getVsid() {
		return vsid;
	}

	public void setVsid(int vsid) {
		this.vsid = vsid;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Item [id=" + id + ", voId=" + voId + ", vsid=" + vsid
				+ ", userId=" + userId + "]";
	}

}
