package org.zerock.sumCal;


public class SumCal {

    // 1부터 100까지의 짝수의 합을 구하는 메소드
    public int sum1() {
        int sum = 0;
        for (int i = 2; i <= 100; i += 2) {
            sum += i;
        }
        return sum;
    }

    // 사용자가 입력한 숫자 a부터 b까지의 합을 구하는 메소드
    public int sum2(int a, int b) {
        int sum = 0;
        for (int i = a; i <= b; i++) {
            sum += i;
        }
        return sum;
    }
}


