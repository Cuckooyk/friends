package com.yc.vote.entity;

import java.io.Serializable;
import java.util.List;

public class ViewBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2220157877105642323L;
	private int id;
	private String title;
	private int optionCount;
	private List<Integer> count;
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
	public int getOptionCount() {
		return optionCount;
	}
	public void setOptionCount(int optionCount) {
		this.optionCount = optionCount;
	}
	public List<Integer> getCount() {
		return count;
	}
	public void setCount(List<Integer> count) {
		this.count = count;
	}
	public int getUserCount() {
		return userCount;
	}
	public void setUserCount(int userCount) {
		this.userCount = userCount;
	}
	@Override
	public String toString() {
		return "\nViewBean [id=" + id + ", title=" + title + ", optionCount="
				+ optionCount + ", count=" + count + ", userCount=" + userCount
				+ "]";
	}
	
}
