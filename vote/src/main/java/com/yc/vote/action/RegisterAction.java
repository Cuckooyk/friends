package com.yc.vote.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.yc.vote.entity.User;
import com.yc.vote.service.RegisterService;
@Controller("registerAction")
public class RegisterAction implements ModelDriven<User>, RequestAware,
		SessionAware {

	@Autowired
	private RegisterService registerService;
	private User user;
	private Map<String, Object> request;
	private Map<String, Object> session;

	public String register() {
		if (user.getPassword().equals( user.getConfirmPassword() )) {
			if (registerService.register(user)) {
				session.put("user", user);
				return "success";
			} else {
				request.put("errorMsg", "注册失败");
				return "fail";
			}

		}
		return "fail";

	}

	@Override
	public User getModel() {
		user = new User();
		return user;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;

	}

}
