package kr.or.ssff.studyIns.service;

import java.util.List;
import java.util.Objects;
import kr.or.ssff.mapper.StudyInsMapper;
import kr.or.ssff.studyIns.domain.StudyInsVO;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/*

 */
@AllArgsConstructor
@Log4j2

@Service("studyInsService")
public class StudyInsServiceImpl implements StudyInsService, InitializingBean, DisposableBean {

    @Setter(onMethod_ = @Autowired)
    private StudyInsMapper mapper;

    @Override

    /* 게시글의 목록을 조회하는 함수입니다. (SI_BOARD table)
     * 매개변수: 없음
     * 반환	: 게시글 리스트
     * 작성자	: 박상준
     */
    
    public List<StudyInsVO> getList() throws Exception {
        log.info("getList() is invoked");

        Objects.requireNonNull(mapper);

        List<StudyInsVO> list = this.mapper.getList();
        log.info("list = {}", list);

        return list;
    }


    @Override
    public void destroy() throws Exception {
        log.info("destroy() is invoked");
    } // destroy

    @Override
    public void afterPropertiesSet() throws Exception {
        log.info("afterPropertiesSet() is invoked");
    } // afterPropertiesSet
} // end class

























