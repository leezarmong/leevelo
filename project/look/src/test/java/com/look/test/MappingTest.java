package com.look.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.look.model.author.AuthorVO;
import com.look.model.author.impl.AuthorDAO;
import com.look.model.book.BookVO;
import com.look.model.book.impl.BookDAO;

@RunWith(SpringJUnit4ClassRunner.class)

/*web.xml 에서 경로를 따로 잡아주지 않은경우는 아래와 같이 어노테이션을 사용할수 있다.
 * @Configuration("file:src/main/resources/spring/root-context.xml")
*/


/* 만약 web.xml에서 클래스패스 상의 Spring 설정 파일을 지정한 경우,
 * 테스트 클래스의 @ContextConfiguration 어노테이션에서는 파일 시스템 경로가 아니라 
 * 클래스패스 경로를 사용해야 한다.. 
 * @ContextConfiguration(locations = "classpath:spring/root-context.xml")
 * 와 같이 설정할 수 있다. */

@ContextConfiguration(locations = "classpath:spring/root-context.xml")
public class MappingTest {
	
	 @Autowired
	    private AuthorDAO authorDAO;
	 
	
	    
	    /* 작가 등록 테스트 */
	    @Test
	    public void authorEnroll() throws Exception{
	        
	    	AuthorVO author = new AuthorVO();
	    	
	        
	        author.setNationId("01");
	        author.setAuthorName("테스트3");
	        author.setAuthorIntro("테스트 소개3");
	        
	        authorDAO.authorEnroll(author);
	        
	    } 
	    
	    
	    

}
