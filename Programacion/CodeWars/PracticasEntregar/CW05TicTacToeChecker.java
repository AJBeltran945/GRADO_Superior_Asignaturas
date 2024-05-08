package Programacion.CodeWars.PracticasEntregar;

public class CW05TicTacToeChecker {
    public static int isSolved(int[][] board) {

        // Check rows and columns
        for (int i = 0; i < 3; i++) {
            // Check rows (adjusting index for columns within bounds)
            if (checkRow(board, i, 0)) return board[i][0];
            // Check columns (adjusting index for rows within bounds)
            if (checkColumn(board, 0, i)) return board[0][i];
        }

        // Check diagonals
        if (checkDiagonal(board, 0, 0)) return board[0][0];
        if (checkDiagonal(board, 0, 2)) return board[0][2];

        // Check for empty spaces
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (board[i][j] == 0) return -1; // Not finished
            }
        }

        // It's a draw
        return 0;
    }

    // Helper functions to check rows, columns, and diagonals (no changes needed in helper functions)
    private static boolean checkRow(int[][] board, int row, int col) {
        int value = board[row][col];
        return value != 0 && value == board[row][(col + 1) % 3] && value == board[row][(col + 2) % 3];
    }

    private static boolean checkColumn(int[][] board, int row, int col) {
        int value = board[row][col];
        return value != 0 && value == board[(row + 1) % 3][col] && value == board[(row + 2) % 3][col];
    }

    private static boolean checkDiagonal(int[][] board, int row, int col) {
        int value = board[row][col];
        // Check primary diagonal
        if (row == col) {
            return value != 0 && value == board[(row + 1) % 3][(col + 1) % 3] && value == board[(row + 2) % 3][(col + 2) % 3];
        }
        // Check secondary diagonal
        else {
            return value != 0 && value == board[(row + 1) % 3][(col + 2) % 3] && value == board[(row + 2) % 3][(col + 1) % 3];
        }
    }
}
