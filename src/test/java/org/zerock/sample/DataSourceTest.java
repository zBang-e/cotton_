package org.zerock.sample;


import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class DataSourceTest {
	
	@Setter(onMethod_ = @Autowired)
	private DataSource dataSource;
	
	@Test
    public void testConnection() {
		//try(resource) : resource 를 try 문 안에 넣으면
		// try 문이 끝나면 자동으로 close() 된다. -> finally DB 닫기 필요 없음
    	try (Connection con = dataSource.getConnection();){			
			log.info(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
    }

}
