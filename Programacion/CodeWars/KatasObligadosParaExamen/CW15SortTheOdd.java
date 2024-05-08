package Programacion.CodeWars.KatasObligadosParaExamen;

import java.util.Arrays;

public class CW15SortTheOdd {
    public static int[] sortArray(int[] array) {
        int[] oddNum = new int[0];
        for (int i = 0; i < array.length; i++) {
            if (array[i] % 2 != 0) {
                for (int j = 0; j < array.length; j++) {
                    oddNum = Arrays.copyOf(oddNum, oddNum.length + 1);
                    oddNum[oddNum.length - 1] = array[i];
                }
            }
        }

        for(int i = 0; i<oddNum.length; i++){
            for(int j = 0; j<oddNum.length; j++){
                if (i == oddNum.length - 1) {
                    continue;
                }
                int num1 = oddNum[i];
                int num2 = oddNum[i + 1];
                if (num2 < num1) {
                    oddNum[i] = num2;
                    oddNum[i + 1] = num1;
                }
            }
        }

        return oddNum;
    }
}
