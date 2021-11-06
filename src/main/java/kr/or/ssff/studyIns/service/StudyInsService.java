package kr.or.ssff.studyIns.service;

import java.util.List;
import kr.or.ssff.studyIns.domain.StudyInsVO;
import org.apache.ibatis.annotations.Mapper;

/*

 */
@Mapper
public interface StudyInsService {

    //01. 게시글 전체 목록
    public List<StudyInsVO> getList(StudyInsVO vo) throws Exception;
}

























