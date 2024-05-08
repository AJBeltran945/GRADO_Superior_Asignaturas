package Programacion.CodeWars.RandomKatas;

public class CW10makeNegative {
    public static int makeNegative(final int x) {
        int result;

        if (x <= 0) {
            result = x;
        } else {
            result = x * -1;
        }

        return result;

    }
}
