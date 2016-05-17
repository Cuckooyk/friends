package com.yc.vote.mapper;

import java.util.List;

import com.yc.vote.entity.Option;
import com.yc.vote.entity.OptionBean;
import com.yc.vote.entity.Subject;
import com.yc.vote.entity.SubjectBean;
import com.yc.vote.entity.ViewBean;

public interface SubjectMapper {

	List<SubjectBean> getAllSubjects();
	
	ViewBean getViewByVsId(int vsId);
	
	OptionBean getOptionsByVsId(int vsId);
	
	void addSubject(Subject subject);
	
	void addOption(Option option);
}
