package com.yc.vote.action;

import java.util.Arrays;
import java.util.Map;



import org.apache.logging.log4j.LogManager;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.yc.vote.entity.Item;
import com.yc.vote.service.VoteService;
@Controller("VoteAction")
public class VoteAction implements ModelDriven<Item>, SessionAware{

	private Item item;
	@Autowired
	private VoteService voteService;
	private Map<String, Object> session;

	public String save() {
		String[] voId = ServletActionContext.getRequest().getParameterValues("voId");
		LogManager.getLogger().debug("item==" + item +"voId==" + Arrays.toString(voId));
		if(voteService.saveVote(item,voId)){
			return "save";
		}
		session.put("saveMsg", "您已经投过票了");
		return "savefail";
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

	@Override
	public Item getModel() {
		item = new Item();
		return item;
	}

}
