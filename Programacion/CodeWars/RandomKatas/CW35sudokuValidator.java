package Programacion.CodeWars.RandomKatas;

public class CW35sudokuValidator {
    public static void main(String[] args) {
        int [][] board = {
            {1,2,3,4,5,6,7,8,9},
            {2,3,4,5,6,7,8,9,1},
            {3,4,5,6,7,8,9,1,2},
            {4,5,6,7,8,9,1,2,3},
            {5,6,7,8,9,1,2,3,4},
            {6,7,8,9,1,2,3,4,5},
            {7,8,9,1,2,3,4,5,6},
            {8,9,1,2,3,4,5,6,7},
            {9,1,2,3,4,5,6,7,8}};
        boolean result = validate(board);
        System.out.println(result);
    }

    public static boolean validate(int[][] board) {
        int count = 0;
        int[] num = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
        if (esVertical(board)) {
            count++;
        }
        if (esHorizontal(board)) {
            count++;
        }
        if (esCubo(board, num)) {
            count++;
        }

        if (count == 3) {
            return true;
        }
        return false;
    }

    public static boolean esVertical(int[][] board) {
        int singCol;
        int allCol = 0;
        for (int i = 0; i < board.length; i++) {
            singCol = 0;
            int[] num = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
            for (int j = 0; j < board[i].length; j++) {
                for (int j2 = 0; j2 < num.length; j2++) {
                    if (board[j][i] < 1) {
                        return false;
                    }
                    if (board[j][i] == num[j2]) {
                        singCol++;
                        num[j2] = 0;
                        break;
                    }
                }

            }
            if (singCol == num.length) {
                allCol++;
            }
        }
        return allCol == board.length;
    }

    public static boolean esHorizontal(int[][] board) {
        int singRow;
        int allRow = 0;
        for (int i = 0; i < board.length; i++) {
            singRow = 0;
            int[] num = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
            for (int j = 0; j < board[i].length; j++) {
                for (int j2 = 0; j2 < num.length; j2++) {
                    if (board[j][i] < 1) {
                        return false;
                    }
                    if (board[i][j] == num[j2]) {
                        singRow++;
                        num[j2] = 0;
                        break;
                    }
                }
            }
            if (singRow == num.length) {
                allRow++;
            }
        }
        return allRow == board.length;
    }


    public static boolean esCubo(int[][] board, int[] num) {
        // Iterate through each 3x3 subgrid
        for (int row = 0; row < 9; row += 3) {
            for (int col = 0; col < 9; col += 3) {
                // Check if the current subgrid contains all numbers in num
                if (!isValidSubgrid(board, row, col, num)) {
                    return false;
                }
            }
        }
        return true;
    }
    
    private static boolean isValidSubgrid(int[][] board, int startRow, int startCol, int[] num) {
        // Array to keep track of numbers found in the subgrid
        boolean[] found = new boolean[num.length];
    
        // Iterate through the subgrid
        for (int row = startRow; row < startRow + 3; row++) {
            for (int col = startCol; col < startCol + 3; col++) {
                // Check if the current cell's value is in the num array
                for (int i = 0; i < num.length; i++) {
                    if (board[row][col] == num[i]) {
                        found[i] = true;
                        break; // Move to the next cell
                    }
                }
            }
        }
    
        // Check if all numbers in num were found in the subgrid
        for (boolean value : found) {
            if (!value) {
                return false;
            }
        }
        return true;
    }
}
