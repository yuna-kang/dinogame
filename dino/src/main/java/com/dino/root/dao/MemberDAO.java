package com.dino.root.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dino.root.vo.MemberVO;

public class MemberDAO {

	private static final String URL = "jdbc:oracle:thin:@localhost:1522:orcl1";
	private static final String USER = "kit3"; 
	private static final String PASSWORD = "1234"; 

	private Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		return DriverManager.getConnection(URL, USER, PASSWORD);
	}

	public void insertMember(MemberVO member) throws Exception {
		String sql = " insert into member (id, pass, name) values (?, ?, ?) ";
		
		try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPass());
			pstmt.setString(3, member.getName());
			pstmt.executeUpdate();
		}
	}

	public MemberVO getMemberById(String id) throws Exception {
		String sql = " select * from member where id = ? ";
		try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, id);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				
				if (rs.next()) {
					MemberVO member = new MemberVO();
					member.setId(rs.getString("id"));
					member.setPass(rs.getString("pass"));
					member.setName(rs.getString("name"));
					return member;
				}
			}
		}
		
		return null;
	}

}