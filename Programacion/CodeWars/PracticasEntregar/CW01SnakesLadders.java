package Programacion.CodeWars.PracticasEntregar;

public class CW01SnakesLadders {
    private int[] playerPositions;
    private boolean gameEnded;
    private int currentPlayer;
    private final int[] LADDERS = { 2, 7, 8, 15, 21, 28, 36, 51, 71, 78, 87 };
    private final int[] LADDERS_DEST = { 38, 14, 31, 26, 42, 84, 44, 67, 91, 98, 94 };
    private final int[] SNAKES = { 16, 46, 49, 62, 64, 74, 89, 92, 95, 99 };
    private final int[] SNAKES_DEST = { 6, 25, 11, 19, 60, 53, 68, 88, 75, 80 };

    public void SnakesLadders() {
        playerPositions = new int[]{0, 0}; // Player 1 and Player 2 starting at square 0
        gameEnded = false;
        currentPlayer = 0; // Player 1 starts
    }

    public String play(int die1, int die2) {
        if (gameEnded) {
            return "Game over!";
        }

        int sum = die1 + die2;
        int newPosition = playerPositions[currentPlayer] + sum;

        if (newPosition > 100) {
            newPosition = 200 - newPosition; // Bounce back from the last square
        }

        playerPositions[currentPlayer] = newPosition;

        if (newPosition == 100) {
            gameEnded = true;
            return "Player " + (currentPlayer + 1) + " Wins!";
        }

        String result = "Player " + (currentPlayer + 1) + " is on square " + newPosition;

        for (int i = 0; i < LADDERS.length; i++) {
            if (newPosition == LADDERS[i]) {
                playerPositions[currentPlayer] = LADDERS_DEST[i];
                result = "Player " + (currentPlayer + 1) + " is on square " + LADDERS_DEST[i];
                break;
            }
        }

        for (int i = 0; i < SNAKES.length; i++) {
            if (newPosition == SNAKES[i]) {
                playerPositions[currentPlayer] = SNAKES_DEST[i];
                result = "Player " + (currentPlayer + 1) + " is on square " + SNAKES_DEST[i];
                break;
            }
        }

        if (die1 != die2) {
            currentPlayer = (currentPlayer + 1) % 2;
        }

        return result;
    }
}

//     private int[] playerPositions;
//     private boolean gameEnded;
//     private int currentPlayer;

//     public void SnakesLadders() {
//         playerPositions = new int[] { 0, 0 }; // Player 1 and Player 2 starting at square 0
//         gameEnded = false;
//         currentPlayer = 0; // Player 1 starts
//     }

// public String play(int die1, int die2) {
//     if (gameEnded) {
//         return "Game over!";
//     }

//     int sum = die1 + die2;
//     int newPosition = playerPositions[currentPlayer] + sum;

//     if (newPosition > 100) {
//         newPosition = 200 - newPosition; // Bounce back from the last square
//     }

//     playerPositions[currentPlayer] = newPosition;

//     if (newPosition == 100) {
//         gameEnded = true;
//         return "Player " + (currentPlayer + 1) + " Wins!";
//     }

//     String result = "Player " + (currentPlayer + 1) + " is on square " + newPosition;

//     if (newPosition == 2 || newPosition == 7 || newPosition == 8 || newPosition == 15 ||  newPosition == 21 || newPosition == 28 || newPosition == 36 || newPosition == 51 || newPosition == 71 || newPosition == 78 || newPosition == 87 ) {
//         // Ladders
//         switch (newPosition) {
//             case 2:
//                 playerPositions[currentPlayer] = 38;
//                 break;
//             case 7:
//                 playerPositions[currentPlayer] = 14;
//                 break;
//             case 8:
//                 playerPositions[currentPlayer] = 31;
//                 break;
//             case 15:
//                 playerPositions[currentPlayer] = 26;
//                 break;
//             case 21:
//                 playerPositions[currentPlayer] = 42;
//                 break;
//             case 28:
//                 playerPositions[currentPlayer] = 84;
//                 break;
//             case 36:
//                 playerPositions[currentPlayer] = 44;
//                 break;
//             case 51:
//                 playerPositions[currentPlayer] = 67;
//                 break;
//             case 71:
//                 playerPositions[currentPlayer] = 91;
//                 break;
//             case 78:
//                 playerPositions[currentPlayer] = 98;
//                 break;
//             case 87:
//                 playerPositions[currentPlayer] = 94;
//                 break;
//         }
//         result = "Player " + (currentPlayer + 1) + " is on square " + playerPositions[currentPlayer];
//     } else if (newPosition == 6 || newPosition == 46 || newPosition == 49 || newPosition == 62 || newPosition == 64 || newPosition == 74 || newPosition == 89|| newPosition == 92|| newPosition == 95|| newPosition == 99) {
//         // Snakes
//         switch (newPosition) {
//             case 16:
//                 playerPositions[currentPlayer] = 6;
//                 break;
//             case 46:
//                 playerPositions[currentPlayer] = 25;
//                 break;
//             case 49:
//                 playerPositions[currentPlayer] = 11;
//                 break;
//             case 62:
//                 playerPositions[currentPlayer] = 19;
//                 break;
//             case 64:
//                 playerPositions[currentPlayer] = 60;
//                 break;
//             case 74:
//                 playerPositions[currentPlayer] = 53;
//                 break;
//             case 89:
//                 playerPositions[currentPlayer] = 68;
//                 break;
//             case 92:
//                 playerPositions[currentPlayer] = 88;
//                 break;
//             case 95:
//                 playerPositions[currentPlayer] = 75;
//                 break;
//             case 99:
//                 playerPositions[currentPlayer] = 80;
//                 break;
//         }
//         result = "Player " + (currentPlayer + 1) + " is on square " + playerPositions[currentPlayer];
//     }

//     if (die1 != die2) {
//         currentPlayer = (currentPlayer + 1) % 2;
//     }

//     return result;
// }