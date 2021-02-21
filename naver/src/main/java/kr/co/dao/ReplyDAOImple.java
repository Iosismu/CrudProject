package kr.co.dao;

import java.util.List;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.BoardVO;
import kr.co.vo.ReplyVO;

@Repository
public class ReplyDAOImple implements ReplyDAO{
	@Inject SqlSession sql;
	
	//댓글 조회
	public List<ReplyVO> readReply(int bno) throws Exception {
		return sql.selectList("replyMapper.readReply", bno);
	}
	
	//댓글 작성
	public void writeReply(ReplyVO vo) throws Exception{
		 sql.insert("replyMapper.writeReply", vo);
	}
	
	//댓글 수정
	public void updateReply(ReplyVO vo) throws Exception{
		sql.update("replyMapper.updateReply", vo);
	}
	
	//댓글 삭제
	public void deleteReply(ReplyVO vo) throws Exception{
		sql.delete("replyMapper.deleteReply", vo);
	}
	
	//게시판 글 삭제시 댓글도 삭제 해야함 왜냐하면 reply 테이블의 bno가 board 테이블의 bno를 참조하는 외래키  이기 떄문!!! 
	public void deleteReply2(int bno) throws Exception{
		sql.delete("replyMapper.deleteReply2", bno);
	}
	
	//선택된 댓글 조회
	public ReplyVO selectReply(int rno) throws Exception{
		return sql.selectOne("replyMapper.selectReply", rno);
	}
}
