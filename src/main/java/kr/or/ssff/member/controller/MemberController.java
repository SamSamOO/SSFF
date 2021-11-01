package kr.or.ssff.member.controller;

import javax.xml.crypto.AlgorithmMethod;
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
@Log4j2
@NoArgsConstructor

@RequestMapping("/member/*")
@Controller
public class MemberController {

    @Autowired
    private MemberService memberService;

    /*회원가입 페이지 이동 --순형*/
    @GetMapping("/joinGo")
    public String memberJoinGo() {
        log.info("memberJoinGo() is invoked");

        return "join";
    }

    /*회원가입 기능 수행 -- 순형
     * memberVO member -- 멤버정보가 전달됩니다.
     * 메인페이지로 이동합니다.
     * */
    @PostMapping("/join")
    public String memberJoin(MemberVO member) throws Exception {
        log.info("join({}) is invoked", "member = " + member);

        return "redirect:/main";
    }

    /*로그인 페이지 이동*/
    @GetMapping("/loginGo")
    public String memberLoginGo() {
        log.info("loginGo() is invoked");

        return "login";
    }

    /*로그인 기능 수행
     * 파라메터 :  email , password
     * 메인페이지로 이동합니다.
     * */
    @PostMapping("/login")
    public String memberLogin(String email, String password) {
        log.info("login() is invoked");

        return "redirect:/main";
    }

    /*마이 페이지 이동
    * 파라메터 : nickname
    * 마이 페이지로 이동합니다.
    * */
    @GetMapping("/myPage")
    public String myPageGo(String nickname) {
        log.info("myPageGo({}) is invoked", "nickname = " + nickname);

        return "myPage";
    }
}

























