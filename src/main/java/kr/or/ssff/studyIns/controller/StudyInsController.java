package kr.or.ssff.studyIns.controller;

import java.util.List;
import java.util.Objects;
import kr.or.ssff.studyIns.domain.StudyInsVO;
import kr.or.ssff.studyIns.model.StudyInsDTO;
import kr.or.ssff.studyIns.service.StudyInsService;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j2
@AllArgsConstructor

@RequestMapping("/studyIns/*")
@Controller("studyInsController")

public class StudyInsController implements InitializingBean , DisposableBean {

    @Override
    public void destroy() throws Exception {

    }

    @Override
    public void afterPropertiesSet() throws Exception {

    }

    @Setter(onMethod_ = {@Autowired})
    private StudyInsService service;

    //-------------------------------- 민주 파일함 --------------------------------//

    /*
     * 게시판의 파일함(링크 모음)으로 이동
     * 매개변수: 게시판ID
     * 반환: 게시판의 파일함(링크 모음) 뷰단
     * */
    @GetMapping("/board/fileBox/link")
    public String boardFileBoxLink(String boardId) {
        log.info("boardFileBoxLink({}) is invoked", "boardId = " + boardId);

        return "studyIns/board/fileBoxLink";
    } // boardLink


    /*
     * 게시판의 파일함(기타파일 모음)으로 이동
     * 매개변수: 게시판ID
     * 반환: 게시판의 파일함(기타파일 모음) 뷰단
     * */
    @GetMapping("/board/fileBox/file")
    public String boardFileBoxEctFile(String boardId) {
        log.info("boardFileBoxEctFile({}) is invoked", "boardId = " + boardId);

        return "studyIns/board/fileBoxEctFile";
    } // boardEctFile


    /*
     * 게시판의 파일함(이미지 모음)으로 이동
     * 매개변수: 게시판ID
     * 반환: 게시판의 파일함(이미지 모음) 뷰단
     * */
    @GetMapping("/board/fileBox/photo")
    public String boardFileBoxPhoto(String boardId) {
        log.info("boardFileBoxPhoto({}) is invoked", "boardId = " + boardId);

        return "studyIns/board/fileBoxPhoto";
    } // boardPhoto


    /*
     * 게시판의 파일함(메인)으로 이동
     * 매개변수: 게시판ID
     * 반환: 게시판의 파일함(메인) 뷰단
     * */
    @GetMapping("/board/fileBox")
    public String boardFileBox(String boardId) {
        log.info("boardFileBox({}) is invoked", "boardId = " + boardId);

        return "studyIns/board/fileBox";
    } // boardFileBox

    /*
     * 채팅방의 파일함(링크 모음)으로 이동
     * 매개변수: 채팅방ID
     * 반환: 채팅방의 파일함(링크 모음) 뷰단
     * */
    @GetMapping("/chatRoom/fileBox/link")
    public String chatRoomFileBoxLink(String chatRoomId) {
        log.info("chatRoomFileBoxLink({}) is invoked", "chatRoomId = " + chatRoomId);

        return "studyIns/chatRoom/fileBoxLink";
    } // chatRoomFileBoxLink


    /*
     * 채팅방의 파일함(기타파일 모음)으로 이동
     * 매개변수: 채팅방ID
     * 반환: 채팅방의 파일함(기타파일 모음) 뷰단
     * */
    @GetMapping("/chatRoom/fileBox/file")
    public String chatRoomFileBoxEctFile(String chatRoomId) {
        log.info("chatRoomFileBoxEctFile({}) is invoked", "chatRoomId = " + chatRoomId);

        return "studyIns/chatRoom/fileBoxEctFile";
    } // chatRoomFileBoxEctFile


    /*
     * 채팅방의 파일함(이미지 모음)으로 이동
     * 매개변수: 채팅방ID
     * 반환: 채팅방의 파일함(이미지 모음) 뷰단
     * */
    @GetMapping("/chatRoom/fileBox/photo")
    public String chatRoomFileBoxPhoto(String chatRoomId) {
        log.info("chatRoomFileBoxPhoto({}) is invoked", "chatRoomId = " + chatRoomId);

        return "studyIns/chatRoom/fileBoxPhoto";
    } // chatRoomFileBoxPhoto


    /*
     * 채팅방의 파일함(메인)으로 이동
     * 매개변수: 채팅방ID
     * 반환: 채팅방의 파일함(메인) 뷰단
     * */
    @GetMapping("/chatRoom/fileBox")
    public String chatRoomFileBox(String chatRoomId) {
        log.info("chatRoomFileBox({}) is invoked", "chatRoomId = " + chatRoomId);

        return "studyIns/chatRoom/fileBox";
    } // chatRoomFileBox

    //-------------------------------- 상준 스터디메인, 게시판 --------------------------------//

    /*
     * 내 챌린지 스터디 메인 화면으로 이동
     * 매개변수: 닉네임, 스터디ID
     * 반환: 내 챌린지 스터디 메인 뷰단
     * */
    @GetMapping("/main/challenge")
    public String challengeMain(String studyId, String nickName) {
        log.info("challengeMain({}) is invoked", "studyId = " + studyId + ", nickName = " + nickName);

        return "studyIns/main/challenge";
    } // challengeMain

    /*
     * 내 프로젝트 스터디 메인 화면으로 이동
     * 매개변수: 닉네임, 스터디ID
     * 반환: 내 프로젝트 스터디 메인 뷰단
     * */
    @GetMapping("/main/project")
    public String projectMain(String studyId, String nickName) {
        log.info("projectMain({}) is invoked", "studyId = " + studyId + ", nickName = " + nickName);

        return "studyIns/main/project";
    } // projectMain


    /*
     * 내 특정 스터디 게시판 화면으로 이동
     * 매개변수: Model model
     * 반환: 내 특정 스터디 게시판 뷰단임
     * */
    @GetMapping("/board/list")
    public void studyBoardList(Model model) throws Exception {
        log.info("studyBoardList({}) is invoked", "model = " + model);

        Objects.requireNonNull(service);

        model.addAttribute("list", service.getList());

    } // studyBoardList

    //-------------------------------- 상준 게시물 CRUD--------------------------------//

    /*
     * 스터디 게시물 상세 화면으로 이동
     * 매개변수: 게시물번호
     * 반환: 스터디 게시물 상세 뷰단
     * */
    @GetMapping("/board/detail")
    public String studyBoardDetail(String boardNo) {
        log.info("studyBoardDetail({}) is invoked", "boardNo = " + boardNo);

        return "studyIns/board/detail";
    } // studyBoardDetail

    /*
     * 스터디 게시물 삭제
     * 매개변수: 게시물번호
     * 반환: 스터디 게시판 메인
     * */
    @PostMapping("/board/detail/remove")
    public String studyBoardDetailRemove(String boardNo) {
        log.info("studyBoardDetailRemove({}) is invoked", "boardNo = " + boardNo);

        return "redirect:studyIns/board/list";
    } // studyBoardDetailRemove

    /*
     * 스터디 게시물 수정페이지 화면으로 이동
     * 매개변수: 게시물번호
     * 반환: 스터디 게시물 수정페이지 뷰단
     * */
    @PostMapping("/board/detail/modifyGo")
    public String studyBoardDetailModifyGo(String boardNo) {
        log.info("studyBoardDetailModifyGo({}) is invoked", "boardNo = " + boardNo);

        return "studyIns/board/modifyGo";
    } // studyBoardDetailModifyGo

    /*
     * 스터디 게시물 수정
     * 매개변수: //TODO 게시물vo?DTO?
     * 반환: 스터디 게시물 상세 뷰단
     * */
    @PostMapping("/board/detail/modify")
    public String studyBoardDetailModify(StudyInsDTO studyInsDTO) {
        log.info("studyBoardDetailModify({}) is invoked", "studyInsDTO = " + studyInsDTO);

        return "redirect:studyIns/board/detail";
    } // studyBoardDetailModify

    /*
     * 스터디 게시물 생성페이지로 이동
     * 매개변수:
     * 반환: 스터디 게시물 생성페이지 뷰단
     * */
    @PostMapping("/board/postGo")
    public String studyBoardPostGo() {
        log.info("studyBoardPostGo() is invoked");

        return "studyIns/board/postGo";
    } // studyBoardPostGo

    /*
     * 스터디 게시물 생성
     * 매개변수: //TODO 게시물vo?DTO?
     * 반환: 스터디 게시물 상세 뷰단
     * */
    @PostMapping("/board/post")
    public String studyBoardPost(StudyInsDTO studyInsDTO) {
        log.info("studyBoardPost({}) is invoked", "studyInsDTO = " + studyInsDTO);

        return "redirect:studyIns/board/detail";
    } // studyBoardPost

    //-------------------------------- 상준 채팅방--------------------------------//

    /*
     * 해당 스터디의 채팅방으로 이동
     * 매개변수: 채팅방 ID
     * 반환: 해당 스터디의 채팅방 뷰단
     * */
    @GetMapping("/chatRoom")
    public String chatRoom(String chatRoomId) { // TODO 매개변수 확인
        log.info("chatRoom({}) is invoked", "chatRoomId = " + chatRoomId);

        return "studyIns/chatRoom/chatRoom";
    } // chatRoom

    /* //TODO 노필요?
     * 채팅전송
     * 매개변수: 게시물번호
     * 반환: 스터디 게시물 상세 뷰단
     * */
//  @PostMapping("/chatRoom/sendMsg")
//  public String sendMsg(String MsgNo){
//    log.info("sendMsg({}) is invoked","MsgNo = " + MsgNo);
//
//    return "";
//  } // studyBoardPost
}

























