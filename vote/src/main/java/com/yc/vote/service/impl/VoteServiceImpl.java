package com.yc.vote.service.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.yc.vote.entity.Item;
import com.yc.vote.entity.Option;
import com.yc.vote.entity.OptionBean;
import com.yc.vote.entity.Subject;
import com.yc.vote.entity.SubjectBean;
import com.yc.vote.entity.ViewBean;
import com.yc.vote.mapper.SubjectMapper;
import com.yc.vote.mapper.VoteMapper;
import com.yc.vote.service.VoteService;

@Service("voteService")
public class VoteServiceImpl implements VoteService {

	@Autowired
	private SubjectMapper subjectMapper;
	@Autowired
	private VoteMapper voteMapper;

	@Override
	public List<SubjectBean> findAllSubject() {

		return subjectMapper.getAllSubjects();
	}

	@Override
	public ViewBean findVote(int vsId) {
		return subjectMapper.getViewByVsId(vsId);
	}

	@Override
	public OptionBean findOptions(int vsId) {
		return subjectMapper.getOptionsByVsId(vsId);
	}

	@Override@Transactional(propagation = Propagation.REQUIRED)
	public boolean saveVote(Item item) {
		try {
			voteMapper.saveVote(item);
			return true;
		} catch (Exception e) {
			LogManager.getLogger().error("投票失败", e);
			//throw new RuntimeException("投票失败",e);
		}
		return false;
	}

	@Override@Transactional(propagation = Propagation.REQUIRED)
	public boolean saveVote(Item item, String[] voId) {

		if (voId.length > 1) {
			for (String v : voId) {
				item.setVoId(Integer.parseInt(v));
				if (!saveVote(item)) {
					return false;
				}
			}
			return true;
		}

		return saveVote(item);

	}


	@Override@Transactional
	public void saveSubject(Subject subject) {
		subjectMapper.addSubject(subject);
	}

	@Override@Transactional
	public void addOption(Option option) {
		subjectMapper.addOption(option);
		
	}

	@Override@Transactional
	public void add(Subject subject, List<String> options) {
		saveSubject(subject);
		for (int i = 0; i < options.size(); i++) {
			Option option = new Option(options.get(i),subject.getId(),i+1);
			addOption(option);
		}
	}

}
