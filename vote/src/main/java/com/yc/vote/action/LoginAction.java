package com.yc.vote.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.yc.vote.entity.User;
import com.yc.vote.service.LoginService;
import com.yc.vote.util.VoteData;

@Controller("loginAction")
public class LoginAction implements ModelDriven<User>, SessionAware {
	private User user;
	@Autowired
	private LoginService loginService;
	private Map<String, Object> session;

	public String login() {
		User users = loginService.Login(user);
		if(users == null ){
			session.put(VoteData.ERROR_MSG, "用户名或密码错误");
			return "login";
		}
		session.put(VoteData.LOGIN_USER, users);
		return "success";
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
}
