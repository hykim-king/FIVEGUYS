package com.fiveguys.pilldex.Address.service;

import java.sql.SQLException;
import java.util.List;

import com.fiveguys.pilldex.domain.AddressVO;

public interface AddressService {
	// CRUD 기능의 메소드 구현
	/**
	 * 사용자가 선택한 즐겨찾기 주소 리스트로 받기
	 * @param userNo
	 * @throws SQLException
	 */
	public List<AddressVO> getAddressListOne(String userNo) throws SQLException;
	/**
	 * 사용자가 가지고 있는 즐겨찾기 주소 리스트로 받기
	 * @param userNo
	 * @throws SQLException
	 */
	public List<AddressVO> getAddressList(String userNo) throws SQLException;
	/**
	 * 사용자가 가지고 있는 즐겨찾기 주소 갯수 구하기
	 * @param User no
	 * @return 0 ~ 10
	 * @throws SQLException
	 */
	public int addAddress(AddressVO vo) throws SQLException;
	/**
	 * 즐겨찾기 주소 삭제
	 * @param vo
	 * @return 1: 성공, 0: 실패
	 * @throws SQLException
	 */
	public int deleteAddress(AddressVO vo) throws SQLException;
	/**
	 * 즐겨찾기 주소 Del=1 설정을 위한 update
	 * @param vo
	 * @return 1: 성공, 0: 실패
	 * @throws SQLException
	 */
	public int updateDelAddress(int vo) throws SQLException;
	
}
