package kr.or.ssff.manager.controller;

import java.util.List;
import kr.or.ssff.manager.service.ManagerService;
import kr.or.ssff.member.domain.MemberVO;
import kr.or.ssff.member.model.MemberDTO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/*

 */
@NoArgsConstructor
@Log4j2

@Controller
@RequestMapping("/manager/*")
public class ManagerController {

    @Autowired
    private ManagerService managerService;

    /*모든 멤버리스트를 조회합니다.
     * 파라메터 : MemberVO 타입의 List --allMemberList
     * 반환 : 멤버리스트 조회페이지
     * */
    @GetMapping("/member/list")
    public String selectMemberList(List<MemberVO> allMemberList) {
        log.info("selectMemberList({}) is invoked", "allMemberList = " + allMemberList);

        return "manager/member/list";
    } // selectMemberList

    //TODO 상세정보 페이지에는 어떤 파라메터를 던져줘야하는지??
    //TODO
    /*회원의 상세정보를 조회합니다.
     * 파라메터 : MemberVO --member-- ???
     * 반환 : 멤버 상세정보 페이지
     * */
    @GetMapping("/member/info")
    public String selectMemberDetail(MemberVO member) {
        log.info("selectMemberDetail({}) is invoked", "member = " + member);

        return "manager/member/info/list";
    } // selectMemberDetail

    /*회원별 상세 정보 수정 페이지 이동
     * 파라메터 : MemberVo --member --??
     *  반환 : 멤버 상세정보 수정 페이지
     * */
    @GetMapping("/member/info/modifyGo")
    public String updateMemberGo(MemberDTO member) {
        log.info("updateMemberGo({}) is invoked", "member = " + member);

        return "manager/member/info/modify";
    } // updateMemberGo

    //TODO 이게맞는지?
    /*회원별 상세 정보 수정 기능 수행
     * 파라메터 : MemberVo --member
     * 반환 : 상세 정보 수정 페이지로 포워드
     * */
    @PostMapping("/member/info/modify")
    public String updateMember(MemberVO member) {
        log.info("updateMember({}) is invoked", "member = " + member);

        return "forward:/manager/member/info/modifyGo";
    } // updateMember

    //TODO 민주누나 이거 활동 내역이라는게 어떤걸 조회하는거지??
    /*회원별 활동 내역 조회
     * 파라메터 : List -- <Member>
     * 반환 : 회원별 활동 내역 조회 페이지
     * */
    @GetMapping("/member/archive/list")
    public String selectMemberArchiveList(List<MemberVO> memberList) {
        log.info("selectMemberArchiveList({}) is invoked", "memberList = " + memberList);

        return "manager/member/archive/list";
    } // selectMemberArchiveList

    /*회원별 소속 스터디
     * 파라메터 : List -- <MemberVO>
     * 반환 : 회원별 소속 스터디 내역 페이지
     * */
    @GetMapping("/member/archive/study")
    public String selectMemberStudyList(List<MemberVO> memberList) {
        log.info("selectMemberStudyList({}) is invoked", "memberList = " + memberList);

        return "manager/member/archive/study";
    } // selectMemberStudyList

    /*회원별 카페 예약 내역
     * 파라메터 : List <MemberVO >
     *반환 : 회원별 카페 예약 내역페이지
     * */
    @GetMapping("/member/archive/reservation")
    public String selectReservationList(List<MemberVO> memberList) {
        log.info("selectReservationList({}) is invoked", "memberList = " + memberList);

        return "manager/member/archive/reservation";
    } // selectReservationList

    /*회원별 결제 내역
     * 파라메터 : List<MemberVo >
     * 반환 : 회원별 결제 내역 리스트 페이지
     * */
    @GetMapping("/member/archive/payment")
    public String selectTransactionList(List<MemberVO> memberList) {
        log.info("selectTransactionList({}) is invoked", "memberList = " + memberList);

        return "manager/member/archive/payment";
    } // selectTransactionList

    /*스터디 목록
    * 파라메터 :
    *
    * */

} // end class

























