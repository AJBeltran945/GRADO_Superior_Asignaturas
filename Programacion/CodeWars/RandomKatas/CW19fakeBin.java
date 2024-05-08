package Programacion.CodeWars.RandomKatas;

public class CW19fakeBin {
    public static String fakeBin(String numberString) {
        String result = "";
        for (int i = 0; i < numberString.length(); i++) {
            char character = numberString.charAt(i);
            int num = Character.getNumericValue(character);
            if (num < 5) {
                result += "0";
            } else {
                result += "1";
            }
        }
        return result;
    }
}
