package Programacion.CodeWars.KatasObligadosParaExamen;

import java.util.Arrays;

public class CW01snail {
    public static int[] snail(int[][] array) {
        if (array == null || array.length == 0 || array[0].length == 0) {
            return new int[0];
        }

        int n = array.length;
        int[] result = new int[n * n];

        int topRow = 0, bottomRow = n - 1;
        int leftCol = 0, rightCol = n - 1;
        int index = 0;

        while (topRow <= bottomRow && leftCol <= rightCol) {
            // Traverse top row from left to right
            for (int col = leftCol; col <= rightCol; col++) {
                result[index++] = array[topRow][col];
            }
            topRow++;

            // Traverse right column from top to bottom
            for (int row = topRow; row <= bottomRow; row++) {
                result[index++] = array[row][rightCol];
            }
            rightCol--;

            // Traverse bottom row from right to left
            if (topRow <= bottomRow) {
                for (int col = rightCol; col >= leftCol; col--) {
                    result[index++] = array[bottomRow][col];
                }
                bottomRow--;
            }

            // Traverse left column from bottom to top
            if (leftCol <= rightCol) {
                for (int row = bottomRow; row >= topRow; row--) {
                    result[index++] = array[row][leftCol];
                }
                leftCol++;
            }
        }

        return result;
    }

    public static void main(String[] args) {
        int[][] array1 = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
        int[][] array2 = {{1, 2, 3}, {8, 9, 4}, {7, 6, 5}};
        int[][] array3 = {{}};

        int[] result1 = snail(array1);
        int[] result2 = snail(array2);
        int[] result3 = snail(array3);

        System.out.println("Snail traversal of array1: " + Arrays.toString(result1));
        System.out.println("Snail traversal of array2: " + Arrays.toString(result2));
        System.out.println("Snail traversal of array3: " + Arrays.toString(result3));
    }
}
