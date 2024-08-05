package com.dino.root.service;

import com.dino.root.dao.MemberDAO;
import com.dino.root.vo.MemberVO;

public class MemberService {
	
	private MemberDAO memberDAO;

    public MemberService() {
        memberDAO = new MemberDAO();
    }

    // 회원가입 처리
    public void signup(MemberVO member) throws Exception {
        memberDAO.insertMember(member);
    }

    // 로그인 처리
    public boolean login(String id, String pass) throws Exception {
        MemberVO member = memberDAO.getMemberById(id);
        return member != null && member.getPass().equals(pass);
    }
}