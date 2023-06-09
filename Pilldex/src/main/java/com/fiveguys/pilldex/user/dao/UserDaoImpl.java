package com.fiveguys.pilldex.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.cmn.DTO;
import com.fiveguys.pilldex.domain.UserVO;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	final String NAMESPACE ="com.fiveguys.pilldex.user";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; 
	
	@Override
	public UserVO doSelectOne(UserVO inVO) throws SQLException {

		String statement = this.NAMESPACE+".doSelectOne";
		System.out.println("---------------------");
		System.out.println("- statement "+ statement);
		System.out.println("---------------------");
		UserVO outVO = this.sqlSessionTemplate.selectOne(statement,inVO);		
				
		return outVO;
	}


}