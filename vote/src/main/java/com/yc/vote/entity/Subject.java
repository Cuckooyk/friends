package com.yc.vote.entity;

import java.util.HashSet;
import java.util.Set;

import javax.swing.text.html.Option;

public class Subject {

	private static int TYPE_SINGLE = 1;
	private static int TYPE_MULTIPLE = 2;
	
	private int id;//编号
	private String title;//标题
	private int type;//类型
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "Subject [id=" + id + ", title=" + title + ", type=" + type
				+ "]";
	}
	
}
