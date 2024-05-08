package Programacion.CodeWars.RandomKatas;

public class CW9smash {
    public static String smash(String... words) {
        String result = "";
        for (int i = 0; i < words.length; i++) {
            String firstword = "";
            if (i == 0) {
                firstword = words[i];
                result = firstword;
            }
            if (firstword == "") {
                result += " " + words[i];
            }
        }
        return result;
    }
}
