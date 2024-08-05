package com.dino.root.vo;

public class MemberVO {
	private String id;
	private String pass;
	private String name;
	
	// 기본 생성자
	public MemberVO(){}
	
	public MemberVO(String id, String pass, String name) {
		this.id = id;
		this.pass = pass;
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pass=" + pass + ", name=" + name + "]";
	}
	
	
	

}
