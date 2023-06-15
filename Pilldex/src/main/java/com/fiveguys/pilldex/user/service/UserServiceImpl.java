package com.fiveguys.pilldex.user.service;

import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.user.dao.UserDao;
import com.fiveguys.pilldex.user.dao.UserDaoImpl;


@Service("userService")
public class UserServiceImpl implements UserService {
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public UserVO selectUser(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ selectUser()                                           │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		return userDao.selectOne(user);
	}

	@Override
	public int doSignUp(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ doSignUp()                                             │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		return userDao.addUser(user);
	}

	@Override
	public int doIdDuplCheck(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ doIdDuplCheck()                                        │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		return this.userDao.idCheck(user);
	}

	@Override
	public int deleteOne(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ deleteOne()                                            │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		return userDao.deleteOne(user);
	}

	@Override
	public int doLogin(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ doLogin()                                              │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		int checkStatus = 0; 		// 10(id 없음)/20(비밀번호 오류),30(성공) 
		int status = this.userDao.idCheck(user);
		
		if(1==status) {
			status = userDao.passCheck(user);
			if(1==status) {
				checkStatus = 30; 	// 로그인 성공 
			}else {
				checkStatus = 20; 	// 비밀번호 오류
			}
		} else {
			checkStatus = 10; 		// id없음
		}
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ checkStatus : "+ checkStatus);
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
		return checkStatus;
	}

	@Override
	public UserVO doSearchId(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ doSearchId()                                           │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
		return this.userDao.searchId(user);
	}
	
//	public int doSearchId(UserVO user) throws SQLException {
//		int checkStatus = 0; 		//10(id 없음)/20(비밀번호 수정 오류),30(비밀번호 수정 성공) 
//		int status = this.userDao.searchId(user);
//		if(1==status) {
//			user.setPw("123123"); 	// passUpdate to "123123"
//			status = userDao.passCheck(user);
//			if(1==status) {
//				checkStatus = 30; 	//비밀번호 수정 성공 
//			}else {
//				checkStatus = 20; 	//비밀번호 수정 오류
//			}
//		} else {
//			checkStatus = 10; 		//해당 name + email 로  id없음
//		}
//
//		LOG.debug("┌────────────────────────────────────────────────────────┐");
//		LOG.debug("│ checkStatus : "+ checkStatus);
//		LOG.debug("└────────────────────────────────────────────────────────┘");
//		
//		return checkStatus;
//	}
}
