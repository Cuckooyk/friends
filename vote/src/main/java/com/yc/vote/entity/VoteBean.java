package com.yc.vote.entity;

import java.io.Serializable;

public class VoteBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1081764475457503714L;

	private int voId;
	private int vsId;
	private int userId;

	public int getVoId() {
		return voId;
	}

	public void setVoId(int voId) {
		this.voId = voId;
	}

	public int getVsId() {
		return vsId;
	}

	public void setVsId(int vsId) {
		this.vsId = vsId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "\nVoteBean [voId=" + voId + ", vsId=" + vsId + ", userId="
				+ userId + "]";
	}

}
