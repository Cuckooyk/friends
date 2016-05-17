package com.yc.vote.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.yc.vote.entity.OptionBean;
import com.yc.vote.entity.ViewBean;
import com.yc.vote.service.VoteService;
@Controller("ViewAction")
public class ViewAction implements SessionAware {

	private int vsid;

	@Autowired
	private VoteService voteService;
	private Map<String, Object> session;

	public int getVsid() {
		return vsid;
	}

	public void setVsid(int vsid) {
		this.vsid = vsid;
	}

	public String view() {
		ViewBean options = voteService.findVote(vsid);
		if (options != null) {
			session.put("options", options);
			return "view";
		}
		return "fail";
	}

	public String vote() {
		OptionBean option = voteService.findOptions(vsid);
		System.out.println(option);
		if (option != null) {
			session.put("option", option);
			return "vote";
		}
		return "fail";
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

}
