package kr.or.ssff.studyIns.controller;

import java.util.Objects;
import kr.or.ssff.studyIns.domain.StudyInsVO;
import kr.or.ssff.studyIns.model.StudyInsDTO;
import kr.or.ssff.studyIns.service.StudyInsService;
import kr.or.ssff.studyIns.utils.UploadFileUtils;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Log4j2
@AllArgsConstructor

@RequestMapping("/upload")
@Controller("studyInsController")

public class UploadController implements InitializingBean, DisposableBean {

    @Setter(onMethod_ = {@Autowired})
    private StudyInsService service;

    @GetMapping("/uploadAjax")
    public void uploadAjax() {
        //uploadAjax.jsp 로 포워딩합니다
    }

    @ResponseBody
    @PostMapping("/uploadAjax")
    public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception {
        log.debug("originalName : " + file.getOriginalFilename());
        log.debug("size : " + file.getSize());
        log.debug("contentType: " + file.getContentType());
        //작업중
        return null;
    }


    @Override
    public void destroy() throws Exception {

    }

    @Override
    public void afterPropertiesSet() throws Exception {

    }

    //-------------------------------- 민주 파일함 --------------------------------//

    /*
     * 게시판의 파일함(링크 모음)으로 이동
     * 매개변수: 게시판ID
     * 반환: 게시판의 파일함(링크 모음) 뷰단
     * */
    @GetMapping("/board/fileBox/link")
    public String boardFileBoxLink(String boardId) {
        log.debug("boardFileBoxLink({}) is invoked", "boardId = " + boardId);

        return "studyIns/board/fileBoxLink";
    } // boardLink




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

























