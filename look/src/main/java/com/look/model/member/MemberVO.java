package com.look.model.member;

public class MemberVO {

	private String member_id;			//회원 아이디 
	private String member_password;		//회원 비밀번호 
	private String member_name;			//회원 이름 
	private String member_email;		//회원 이메일 

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_password() {
		return member_password;
	}

	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	@Override
	public String toString() {
		return "MemberVO [member_id=" + member_id + ", member_password=" + member_password + ", member_name="
				+ member_name + ", member_email=" + member_email + ", getMember_id()=" + getMember_id()
				+ ", getMember_password()=" + getMember_password() + ", getMember_name()=" + getMember_name()
				+ ", getMember_email()=" + getMember_email() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

}
