package org.zerock.reportCard_1;

import java.util.Scanner;

public class ReportCard {
    private int kor;
    private int eng;
    private int math;

    //점수 입력
    public void Scores() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("국어 점수를 입력하세요: ");
        this.kor = scanner.nextInt();

        System.out.print("영어 점수를 입력하세요: ");
        this.eng = scanner.nextInt();

        System.out.print("수학 점수를 입력하세요: ");
        this.math = scanner.nextInt();
    }

    // 평균 점수를 계산하고 출력하는 메소드
    public void Average() {
        double average = (kor + eng + math)/3;
        System.out.println("평균 점수: " + average);
    }
}


