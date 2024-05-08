package Programacion.CodeWars.RandomKatas;

import java.util.Arrays;

public class Sort1 {
    public static void main(String[] args) {
        int a[] = { 5, 2, 3, 6, 8, 1, 4, 9, 7,85,74,12,63,41,269,74,369,326586,3165432,133,43,46,32665,39 };
        int[] sorted = sorted(a);

        System.out.println(Arrays.toString(sorted));

    }

    static int[] sorted(int[] unsorted) {
        for (int j = 0; j < unsorted.length; j++) {
            for (int i = 0; i < unsorted.length; i++) {
                if (i == unsorted.length - 1) {
                    continue;
                }
                int num1 = unsorted[i];
                int num2 = unsorted[i + 1];

                if (num2 < num1) {
                    unsorted[i] = num2;
                    unsorted[i + 1] = num1;
                }
            }
        }

        return unsorted;
    }
}
