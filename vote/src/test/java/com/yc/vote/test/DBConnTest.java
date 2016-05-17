package com.yc.vote.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class DBConnTest {

	@Autowired
	private DataSource dateSource;
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void testConn() {
		Connection con = null;
		
		try {
			con=sqlSessionFactory.openSession().getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		assertNotNull("数据库连接失败", con);
	}
}
