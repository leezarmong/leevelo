package com.look.model.author;

import java.util.Date;

public class AuthorVO {

	/* 작가 아이디 */
	private int authorId;

	/* 작가 이름 */
	private String authorName;

	/* 국가 id */
	private String nationId;

	/* 작가 국가 */
	private String nationName;

	/* 작가 소개 */
	private String authorIntro;

	/* 등록 날짜 */
	private Date regDate;

	/* 수정 날짜 */
	private Date updateDate;

	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getNationId() {
		return nationId;
	}

	
	/*쿼리 반환 결과 데이터에는 AuthorVO에 정의되어 있는 
	 * '소속 국가 이름(nationName)'은 반환되지 않는다. 
	 * 반환받도록 쿼리문을 작성할 수 있지만 다른 표(vam_nation)에서 데이터를 가져와야 하기 때문에 
	 * 자원을 좀 더 많이 소모하게 되. 
	 * 이러한 소모를 줄이기 위해서 NationId 를 받게 될때 불러오는 방식을 쓰게 되었다.  .*/
	public void setNationId(String nationId) {
		this.nationId = nationId;
		
		if(nationId.equals("01")) {
			this.nationName ="국내";
		}
		else {
			this.nationName = "국외";
		}
	}

	public String getNationName() {
		return nationName;
	}

	public void setNationName(String nationName) {
		this.nationName = nationName;
	}

	public String getAuthorIntro() {
		return authorIntro;
	}

	public void setAuthorIntro(String authorIntro) {
		this.authorIntro = authorIntro;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "AuthorVO [authorId=" + authorId + ", authorName=" + authorName + ", nationId=" + nationId
				+ ", nationName=" + nationName + ", authorIntro=" + authorIntro + ", regDate=" + regDate
				+ ", updateDate=" + updateDate + ", getAuthorId()=" + getAuthorId() + ", getAuthorName()="
				+ getAuthorName() + ", getNationId()=" + getNationId() + ", getNationName()=" + getNationName()
				+ ", getAuthorIntro()=" + getAuthorIntro() + ", getRegDate()=" + getRegDate() + ", getUpdateDate()="
				+ getUpdateDate() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

}
