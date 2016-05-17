package com.yc.vote.entity;

import java.io.Serializable;
import java.util.List;

public class OptionBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2458174353961125250L;
	private int id;
	private String title;
	private int type;
	private int optionCount;
	private List<Option> options;
	private int userCount;

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

	public List<Option> getOptions() {
		return options;
	}

	public void setOptions(List<Option> options) {
		this.options = options;
	}

	public int getUserCount() {
		return userCount;
	}

	public void setUserCount(int userCount) {
		this.userCount = userCount;
	}

	@Override
	public String toString() {
		return "\nOptionBean [id=" + id + ", title=" + title + ", type=" + type
				+ ", optionCount=" + optionCount + ", options=" + options
				+ ", userCount=" + userCount + "]";
	}

}
