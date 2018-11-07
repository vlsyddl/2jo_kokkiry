package kr.co.assa.repository.mapper;

import kr.co.assa.repository.domain.Member;

public interface MemberMapper {
	int insertMemer(Member member);
	Member selectByUserEamil(String usermail);
	Member selectByNickname(String nickname);
	
	String selectUserEmail(String userEmail);
	Member selectMember (int userNo);
	int updateMember(Member member);
	int updateMember2(Member member);
	int updateProfile(Member member);
	Member login(Member member);
	Member selectFindPass(Member member);
	Member selectFindPassByCode (Member member);
	int updateFindPass(Member member);
	
	
}
