package com.yc.vote.entity;

import java.io.Serializable;

public class SubjectBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1597326794270609788L;
	private int id;
	private String title;
	private int type;
	private int optionCount;
	private int userCount;

	public SubjectBean() {

	}

	public SubjectBean(int id, String title, int type, int optionCount,
			int userCount) {
		this.id = id;
		this.title = title;
		this.type = type;
		this.optionCount = optionCount;
		this.userCount = userCount;
	}

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

	public int getOptionCount() {
		return optionCount;
	}

	public void setOptionCount(int optionCount) {
		this.optionCount = optionCount;
	}

	public int getUserCount() {
		return userCount;
	}

	public void setUserCount(int userCount) {
		this.userCount = userCount;
	}

	@Override
	public String toString() {
		return "\nSubjectBean [id=" + id + ", title=" + title + ", type="
				+ type + ", optionCount=" + optionCount + ", userCount="
				+ userCount + "]";
	}
}
