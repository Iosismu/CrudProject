package kr.co.service;

import kr.co.vo.MemberVO;

public interface MemberService {

	public void register(MemberVO vo) throws Exception;
	
	public MemberVO login(MemberVO vo) throws Exception;

	public void memberUpdate(MemberVO vo) throws Exception;

	public void memberDelete(MemberVO vo) throws Exception;
    
}