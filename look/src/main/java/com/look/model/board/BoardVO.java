package com.look.model.board;

import java.util.Date;

public class BoardVO {

	private int seq; // 순서
	private String title; // 제목
	private String writer; // 글쓴이
	private String content; // 내용
	private Date regDate; // 날짜 
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "BoardVO [seq=" + seq + ", title=" + title + ", writer=" + writer + ", content=" + content + ", regDate="
				+ regDate + ", getSeq()=" + getSeq() + ", getTitle()=" + getTitle() + ", getWriter()=" + getWriter()
				+ ", getContent()=" + getContent() + ", getRegDate()=" + getRegDate() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	

	

}
