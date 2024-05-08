package Programacion.CodeWars.PracticasEntregar;

public class CW03Connect4 {
    private int[][] board;
    private int player;
    private boolean win;

    public void Connect4() {
        this.board = new int[6][7];
        this.player = 1;
        this.win = false;
    }

    public String play(int col) {
        if (win)
            return "Game has finished!";
        if (board[0][col] != 0)
            return "Column full!";
        int row = 0;
        for (int z = 0; z < 6; z++) {
            if (z == 5 || board[z + 1][col] != 0) {
                board[z][col] = player;
                row = z;
                break;
            }
        }
        if (checkWin(row, col)) {
            win = true;
            return "Player " + player + " wins!";
        }
        String result = "Player " + player + " has a turn";
        player = (player == 1) ? 2 : 1;
        return result;
    }

    private boolean checkWin(int row, int col) {
        int count = 1;

        // Check vertically
        for (int i = row - 1; i >= 0 && board[i][col] == player; i--) {
            count++;
        }
        for (int i = row + 1; i < 6 && board[i][col] == player; i++) {
            count++;
        }
        if (count >= 4)
            return true;

        // Check horizontally
        count = 1;
        for (int i = col - 1; i >= 0 && board[row][i] == player; i--) {
            count++;
        }
        for (int i = col + 1; i < 7 && board[row][i] == player; i++) {
            count++;
        }
        if (count >= 4)
            return true;

        // Check diagonally (top-left to bottom-right)
        count = 1;
        for (int i = row - 1, j = col - 1; i >= 0 && j >= 0 && board[i][j] == player; i--, j--) {
            count++;
        }
        for (int i = row + 1, j = col + 1; i < 6 && j < 7 && board[i][j] == player; i++, j++) {
            count++;
        }
        if (count >= 4)
            return true;

        // Check diagonally (top-right to bottom-left)
        count = 1;
        for (int i = row - 1, j = col + 1; i >= 0 && j < 7 && board[i][j] == player; i--, j++) {
            count++;
        }
        for (int i = row + 1, j = col - 1; i < 6 && j >= 0 && board[i][j] == player; i++, j--) {
            count++;
        }
        return count >= 4;
    }
}
