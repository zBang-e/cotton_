package org.zerock.random;

import java.util.Random;

public class RandomParents {

    public int getRandom() {
        Random random = new Random();
        return random.nextInt(45) + 1; // 0부터 시작이라 +1
    }
}



