package Programacion.CodeWars.RandomKatas;

public class CW22circleOfNumbers {
    public static int circleOfNumbers(int n, int firstNumber) {
        int half = n / 2;
        int result = 0;
        if (firstNumber < half) {
            result = firstNumber + half;
        } else if (firstNumber >= half) {
            result = firstNumber - half;
        }
        return result;
    }
}
