package Programacion.CodeWars.RandomKatas;

public class CW12RPS {
    public static String RPS(String p1, String p2) {
        String rps = "";

        if (p1 == "rock" || p2 == "scissors") {
            rps = "Player 1 won!";

        } else if (p1 == "scissors" || p2 == "paper") {
            rps = "Player 1 won!";
        } else if (p1 == "paper" || p2 == "rock") {
            rps = "Player 1 won!";
        }

        if (p2 == "rock" || p1 == "scissors") {
            rps = "Player 2 won!";
        } else if (p2 == "scissors" || p1 == "paper") {
            rps = "Player 2 won!";
        } else if (p2 == "paper" || p1 == "rock") {
            rps = "Player 2 won!";
        }

        if (p1 == p2) {
            rps = "Draw!!";
        }

        return rps;
    }

}
