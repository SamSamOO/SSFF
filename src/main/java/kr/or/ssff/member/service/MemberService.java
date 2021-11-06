package kr.or.ssff.member.service;

import java.util.List;
import kr.or.ssff.member.model.ApplyMemberVO;
/*

 */
public interface MemberService {
    // 1. 새로운 게시물 등록
    public abstract boolean register();

    // 2. 기존 게시글 수정(변경)
    public abstract boolean modify();

    // 3. 기존 게시글 삭제
    public abstract boolean remove();

    // 4. 특정 게시글 상세조회
    public abstract String get();

    // 5. 전체 목록 조회
    public abstract List<String> getList();

    //5. 목록조회 with paging
    public abstract List<String> getListPerPage();

    //
    public abstract Integer getTotal();
    // 1. 특정 스터디의 멤버 조회 : 신지혜
    public abstract List<ApplyMemberVO> getApplyMemberList(Integer r_idx);

}// end interface


















