package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.ReplyDAO;
import kr.co.vo.BoardVO;
import kr.co.vo.ReplyVO;

@Service
public class ReplyServiceImple implements ReplyService{
	
	@Inject 
	private ReplyDAO dao;
	
	//댓글 조회
	public List<ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
	
	//댓글 작성
	public void writeReply(ReplyVO vo) throws Exception{
		 dao.writeReply(vo);
	}
	
	//댓글 수정
	public void updateReply(ReplyVO vo) throws Exception{
		dao.updateReply(vo);
	}
	
	//댓글 삭제
	public void deleteReply(ReplyVO vo) throws Exception{
		dao.deleteReply(vo);
	}
	
	//게시판 글 삭제시 댓글도 삭제 해야함 왜냐하면 reply 테이블의 bno가 board 테이블의 bno를 참조하는 외래키  이기 떄문!!! 
	public void deleteReply2(int bno) throws Exception{
		dao.deleteReply2(bno);
	}
	
	//선택된 댓글 조회
	public ReplyVO selectReply(int rno) throws Exception{
		return dao.selectReply(rno);
	}
}
