package Programacion.CodeWars.KatasObligadosParaExamen;

public class CW11predictLastMarbleColor {
    public static String predictLastMarbleColor(int b, int w) {
        // If both the initial counts of black and white marbles are zero, then we're unsure about the color of the last marble
        if (b == 0 && w == 0) {
            return "Unsure";
        }
        
        // If the total count of marbles is even, the last marble will be black
        if ((b + w) % 2 == 0) {
            return "Black";
        }
        
        // If the total count of marbles is odd, determine the ratio of black to white marbles
        // If the ratio favors black marbles, the last marble will be black; otherwise, it will be white
        if (b > w) {
            return "Black";
        } else {
            return "White";
        }
    }

    public static void main(String[] args) {
        int b = 11111; // Example: Initial number of black marbles
        int w = 22222; // Example: Initial number of white marbles
        
        // Predict the color of the last marble
        String prediction = predictLastMarbleColor(b, w);
        System.out.println("The predicted color of the last marble is: " + prediction);
    }
}
