package co.aram.lms.member.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.aram.lms.member.service.MemberMapper;
import co.aram.lms.member.service.MemberService;
import co.aram.lms.member.service.MemberVO;

@Repository("memberDao")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberMapper map; // dao 의존주입

	@Override
	public List<MemberVO> memberSelectList(String status) {
		return map.memberSelectList(status);
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		return map.memberInsert(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		return map.memberDelete(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		return map.memberUpdate(vo);
	}

	@Override
	public boolean isCheckId(String id) {
		return map.isCheckId(id);
	}

}
