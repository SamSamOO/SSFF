package kr.or.ssff.studyIns.service;

import java.util.List;
import kr.or.ssff.studyIns.domain.StudyInsVO;
import org.apache.ibatis.annotations.Mapper;

/*

 */
public interface StudyInsService {

    //01. 게시글 전체 목록 : 박상준
    public abstract List<StudyInsVO> getList() throws Exception;

}

























