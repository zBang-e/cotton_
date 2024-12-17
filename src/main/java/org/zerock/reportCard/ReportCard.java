package org.zerock.reportCard;

import java.util.Scanner;


public class ReportCard {  
	private int kor;
	private int eng;
	private int math;

	// 점수 입력
	public void Scores() {
	    Scanner scanner = new Scanner(System.in);
	
	    System.out.print("국어 점수: ");
	    this.kor = scanner.nextInt();
	
	    System.out.print("영어 점수: ");
	    this.eng = scanner.nextInt();
	
	    System.out.print("수학 점수: ");
	    this.math = scanner.nextInt();

	}
	
	// 점수 출력 
	public void TotalScore() {
	    double average = (kor + eng + math)/3;
	    System.out.print("평균 점수: " + average);
	}


}


