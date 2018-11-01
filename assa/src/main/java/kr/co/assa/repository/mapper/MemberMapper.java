package kr.co.assa.repository.mapper;

import kr.co.assa.repository.domain.Member;

public interface MemberMapper {
	void insertMemer(Member memeber);
	String selectUserEmail(String userEmail);
	Member selectMember (String Member);
	void updateMember(Member member);
	Member login(Member member);
	int selectFindPass(Member member);
	void insertFindPass(Member member);
	
	
}
