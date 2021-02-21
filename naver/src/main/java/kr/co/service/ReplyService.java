package kr.co.service;

import java.util.List;

import kr.co.vo.BoardVO;
import kr.co.vo.ReplyVO;

public interface ReplyService {
	
	//댓글 조회
	public List<ReplyVO> readReply(int bno) throws Exception;

	//댓글 작성
	public void writeReply(ReplyVO vo) throws Exception;

	//댓글 수정
	public void updateReply(ReplyVO vo) throws Exception;
	
	//댓글 삭제
	public void deleteReply(ReplyVO vo) throws Exception;

	//게시판 글 삭제시 댓글도 삭제 해야함 왜냐하면 reply 테이블의 bno가 board 테이블의 bno를 참조하는 외래키  이기 떄문!!! 
	public void deleteReply2(int bno) throws Exception;
	
	//선택된 댓글 조회
	public ReplyVO selectReply(int rno) throws Exception;
}
