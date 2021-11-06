package kr.or.ssff.member.service;

import java.util.List;

import kr.or.ssff.member.model.ApplyMemberVO;

/*
 * 최초 작성자: 신지혜
 * 목적: member service 관리
 */

public interface MemberService {

	// 1. 특정 스터디의 멤버 조회 : 신지혜 
	public abstract List<ApplyMemberVO> getApplyMemberList(Integer r_idx);

} // end interface
