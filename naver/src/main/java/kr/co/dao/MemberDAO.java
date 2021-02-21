package kr.co.dao;

import kr.co.vo.MemberVO;

public interface MemberDAO {
	
	// 회원가입
	public void register(MemberVO vo) throws Exception;
	
	public MemberVO login(MemberVO vo) throws Exception;
    
	// 회원정보 수정
	public void memberUpdate(MemberVO vo)throws Exception;

	// 회원 탈퇴
	public void memberDelete(MemberVO vo)throws Exception;
    
}

