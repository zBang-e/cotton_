package org.zerock.sumCal;

import java.util.Scanner;

public class SumMain {
    public static void main(String[] args) {
        // SumCal 클래스 인스턴스 생성
        SumCal sumCal = new SumCal();
        Scanner scanner = new Scanner(System.in);

        // 1부터 100까지의 짝수의 합 출력
        int evenSum = sumCal.sum1();
        System.out.println("1부터 100까지의 짝수의 합: " + evenSum);

        // 키보드 입력 받아 범위 계산
        System.out.print("첫번째 숫자를 입력하세요: ");
        int a = scanner.nextInt();

        System.out.print("두번째 숫자를 입력하세요: ");
        int b = scanner.nextInt();

        int rangeSum = sumCal.sum2(a, b);
        System.out.println(a + "부터 " + b + "까지의 합: " + rangeSum);

        scanner.close();
    }
}

