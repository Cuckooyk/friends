package com.yc.vote.entity;

public class Option {
	private int id;// 编号
	private String name; // 选项名
	private int vsid;// 投票主题对应的id值
	private int order;
	
	public Option() {

	}

	public Option(int vsid) {
		this.vsid = vsid;
	}

	public Option( String name, int vsid, int order) {
		this.name = name;
		this.vsid = vsid;
		this.order = order;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getVsid() {
		return vsid;
	}

	public void setVsid(int vsid) {
		this.vsid = vsid;
	}

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}

	@Override
	public String toString() {
		return "Option [id=" + id + ", name=" + name + ", vsid=" + vsid
				+ ", order=" + order + "]";
	}

}
