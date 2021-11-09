package kr.or.ssff.mapper;

import java.util.List;
import kr.or.ssff.studyIns.domain.StudyInsVO;
import kr.or.ssff.studyIns.model.StudyInsDTO;
import org.apache.ibatis.annotations.Select;


/*
 * 최초 작성자: 박상준
 * 목적: StudyIns DAO (Data Access Object) : 지정된 테이블을 목록 조회, CRUD할 수 있는 메소드를 선언
 */
public interface StudyInsMapper {

    public List<StudyInsVO> getList();

    public StudyInsVO read(Integer cont_No);

    public boolean remove(Integer cont_No);

    public int update(StudyInsDTO studyIns);

    public int insert(StudyInsDTO studyInsDTO);
}
