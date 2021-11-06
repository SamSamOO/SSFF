package kr.or.ssff.member.controller;

import kr.or.ssff.member.domain.MemberVO;
import kr.or.ssff.member.service.MemberService;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/*

 */
@RequestMapping("/member")
@Log4j2

@NoArgsConstructor
@Controller
public class MemberController {

    @Autowired
    private MemberService memberService;

    /* 회원가입 페이지 이동 --순형
     * 파라메터  : 없음
     * 회원가입 페이지
     * */
    @GetMapping("/joinGo")
    public String memberJoinGo() {
        log.info("memberJoinGo() is invoked");

        return "member/join";
    } // memberJoinGo

    /* 회원가입 기능 수행 -- 순형
     * memberVO member -- 멤버정보가 전달됩니다.
     * 메인페이지로 이동합니다.
     * */
    @PostMapping("/join")
    public String memberJoin(MemberVO member) {
        log.info("join({}) is invoked", "member = " + member);

        return "redirect:/main";
    } // memberJoin

    /* 로그인 페이지 이동
     * 파라메터 : 없음
     * 로그인 페이지
     * */
    @GetMapping("/loginGo")
    public String memberLoginGo() {
        log.info("loginGo() is invoked");

        return "member/login";
    } // memberLoginGo

    /* 로그인 기능 수행
     * 파라메터 :  email , password
     * 메인페이지로 이동합니다.
     * */
    @PostMapping("/login")
    public String memberLogin(String email, String password) {
        log.info("login() is invoked");

        return "redirect:/main";
    } // memberLogin

    /* 마이 페이지 이동
     * 파라메터 : nickname
     * 마이 페이지로 이동합니다.
     * */
    @GetMapping("/myPage")
    public String myPageGo(String nickname) {
        log.info("myPageGo({}) is invoked", "nickname = " + nickname);

        return "/member/myPage";
    } // myPageGo

    /* 가입한 스터디 목록 페이지로 이동
     * 파라메터 : nickname
     * 스터디 목록 페이지
     * */
    @GetMapping("/studyList")
    public String selectStudyList(String nickname) {
        log.info("selectStudyList({}) is invoked", "nickname = " + nickname);

        return "/member/studyList";
    } // studyListGo

    /* 스터디 카페 예약내역 페이지로 이동합니다
     * 파라메터 : nickname
     * 스터디 카페 예약내역 페이지
     * */
    @GetMapping("/reservationList")
    public String selectReservationList(String nickname) {
        log.info("selectReservationList({}) is invoked", "nickname = " + nickname);

        return "/member/reservationList";
    } // reservationList

    /* 결제 내역 페이지로 이동합니다.
     * 파라메터 :String nickname
     * 결제 내역 페이지
     * */
    @GetMapping("/paymentList")
    public String selectPaymentList(String nickname) {
        log.info("selectPaymentList({}) is invoked", "nickname = " + nickname);

        return "/member/paymentList";
    } // paymentList

    /* 회원탈퇴기능을 수행합니다
     * 파라메터 : String nickname
     *탈퇴기능 수행 후 메인페이지
     * */
    @PostMapping("/withdrawal")
    public String withdrawal(String nickname) {
        log.info("withdrawal({}) is invoked", "nickname = " + nickname);

        return "redirect:/main";
    } // withdrawal

    /* 아이디/ 비밀번호 찾기 페이지 이동
     * 파라메터 : String nickname
     * 아이디 / 비밀번호 찾기 페이지
     * */
    @GetMapping("/idPwFindGo")
    public String idPwFindGo(String nickname) {
        log.info("idPwFindGo({}) is invoked", "nickname = " + nickname);

        return "/member/idPwFind";
    }

    /* 거래 내역 조회 페이지로 이동합니다.
     * 파라메터 : String nickname
     * 거래 내역 조회 페이지
     * */
    @GetMapping("/transactionList")
    public String selectTransactionList(String nickname) {
        log.info("selectTransactionList({}) is invoked", "nickname = " + nickname);

        return "/member/transactionList";
    }

    //TODO 해당 코드의 파라메터에 대한 내용을 추가해야합니다. -- 상준
    //TODO 해당 코드의 반환페이지에 대한 내용을 추가해야합니다.-- 상준
    /*회원간 송금 기능을 수행합니다.
     * 파라메터 : ???
     * 반환 페이지 : ???
     */
    @PostMapping("/remit")
    public String remit() {
        log.info("remit() is invoked");

        return null;
    }

} // end class

























