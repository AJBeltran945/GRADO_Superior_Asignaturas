package Programacion.CodeWars.RandomKatas;

public class CW15disemvowel {
    public static String disemvowel(String str) {
        String result = "";
        char character;
        for (int i = 0; i < str.length(); i++) {
            String ch = "";
            character = str.charAt(i);
            if (character == 'a' || character == 'e' || character == 'i' || character == 'o' || character == 'u') {
                continue;
            }
            if (character == 'A' || character == 'E' || character == 'I' || character == 'O' || character == 'U') {
                continue;
            }
            ch = String.valueOf(character);
            result += ch;
        }
        return result;
    }
}

// public class Troll {
//     public static String disemvowel(String str) {
//         return str.replaceAll("[aAeEiIoOuU]", "");
//     }
// }