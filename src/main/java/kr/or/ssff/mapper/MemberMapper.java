package kr.or.ssff.mapper;

import java.util.List;

import kr.or.ssff.member.model.ApplyMemberVO;


/*
 * 최초 작성자: 신지혜
 * 목적: member DAO (Data Access Object) : 지정된 테이블을 목록 조회, CRUD할 수 있는 메소드를 선언 
 */


public interface MemberMapper {

	// 1. 특정 스터디의 멤버 조회 : 신지혜 
	public abstract List<ApplyMemberVO> getApplyMemberList(Integer r_idx);
	
}
