package Programacion.CodeWars.RandomKatas;

public class CW16getXO {
    public static boolean getXO(String str) {
        Boolean result = false;
        int x = 0, o = 0;
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) == 'x' || str.charAt(i) == 'X') {
                x++;
            }
            if (str.charAt(i) == 'o' || str.charAt(i) == 'O') {
                o++;
            }
        }
        if (x == o) {
            result = true;
        } else if (x == 0 && o == 0) {
            result = true;
        }
        return result;
    }
}
