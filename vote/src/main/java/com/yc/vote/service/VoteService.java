package com.yc.vote.service;

import java.util.List;

import com.yc.vote.entity.Item;
import com.yc.vote.entity.Option;
import com.yc.vote.entity.OptionBean;
import com.yc.vote.entity.Subject;
import com.yc.vote.entity.SubjectBean;
import com.yc.vote.entity.ViewBean;

public interface VoteService {

	ViewBean findVote(int vsId);
	
	boolean saveVote(Item item);
	
	boolean saveVote(Item item,String[] voId);
	
	OptionBean findOptions(int vsId);
	
	List<SubjectBean> findAllSubject();

	void saveSubject(Subject subject);
	
	void addOption(Option option);
	
	void add(Subject subject,List<String> options);
	
}
