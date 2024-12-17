package org.zerock.random;

public class RandomMain {
    public static void main(String[] args) {
        RandomParents randomParents = new RandomParents();

       
        int randomNum = randomParents.getRandom();
        System.out.println("무작위 숫자: " + randomNum);
    }
}




