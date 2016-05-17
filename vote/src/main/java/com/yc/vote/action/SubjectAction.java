package com.yc.vote.action;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.yc.vote.entity.Subject;
import com.yc.vote.entity.SubjectBean;
import com.yc.vote.service.VoteService;

@Controller("subjectAction")
public class SubjectAction implements ModelDriven<Subject>,SessionAware{

	private Subject subject;
	@Autowired
	private VoteService voteService;
	private Map<String, Object> session;
	private List<String> options;
	public List<String> getOptions() {
		return options;
	}

	public void setOptions(List<String> options) {
		this.options = options;
	}

	public String list(){
		List<SubjectBean> subjects = voteService.findAllSubject();
		session.put("subjects", subjects);
		LogManager.getLogger().debug("list请求成功");
		return "list";
	}

	public String save(){
		LogManager.getLogger().debug("subject=="+ subject+"options==" + options);
		try {
			voteService.add(subject, options);;
			return "saveSuccess";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "addfail";
	}
	
	public String add(){
		return "add";
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}

	@Override
	public Subject getModel() {
		subject = new Subject();
		return subject;
	}
}
