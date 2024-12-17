package org.zerock.reportCard;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

	public class ReportCardMain {
		
	    public static void main(String[] args) {
	        // 스프링 컨테이너 설정
	        ApplicationContext context = 
	        		new AnnotationConfigApplicationContext(AppConfig.class);

	        // ReportCard 빈 가져오기
	        ReportCard reportCard = context.getBean(ReportCard.class);

	        // 점수 입력 및 평균 출력
	        reportCard.Scores();
	        reportCard.TotalScore();
	    }
}

	
	