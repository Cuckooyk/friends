package com.yc.vote.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.vote.entity.OptionBean;
import com.yc.vote.entity.SubjectBean;
import com.yc.vote.entity.ViewBean;
import com.yc.vote.service.VoteService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class VoteServiceImplTest {

	@Autowired
	private VoteService voteService;
	@Test
	public void testFindAllSubject() {
		List<SubjectBean> subjects = voteService.findAllSubject();
		System.out.println(subjects);
		assertNotNull(subjects);
	}

	@Test
	public void testFindViewByVsId() {
		ViewBean options= voteService.findVote(101);
		System.out.println(options);
		assertNotNull(options);
	}
	
	@Test
	public void testFindOptionByVsId() {
		OptionBean options= voteService.findOptions(101);
		System.out.println(options);
		assertNotNull(options);
	}
}
