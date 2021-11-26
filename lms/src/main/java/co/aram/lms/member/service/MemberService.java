package co.aram.lms.member.service;

import java.util.List;

public interface MemberService {
	// 상태마다 모아서 리스트 볼 수 있도록
	// 삭제 회원, 신규 회원, 수정 회원 등등 선택적으로..
	List<MemberVO> memberSelectList(String status); 
	MemberVO memberSelect(MemberVO vo);
	int memberInsert(MemberVO vo);
	int memberDelete(MemberVO vo);
	int memberUpdate(MemberVO vo);
	boolean isCheckId(String id); // is가 들어갔기 때문에 존재하면 false(사용불가), 그렇지 않으면 true(사용가능)

}
