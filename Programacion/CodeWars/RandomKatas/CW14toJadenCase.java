package Programacion.CodeWars.RandomKatas;

public class CW14toJadenCase {
    public String toJadenCase(String phrase) {
        String result = "";
        char character, characterBefore = '\0';
        if (phrase == null || phrase == "") {
            return null;
        }
        for (int i = 0; i < phrase.length(); i++) {
            character = phrase.charAt(i);

            String ch = "";

            if (i != 0) {
                characterBefore = phrase.charAt(i - 1);
            }
            int numbefore = (int) characterBefore;

            if (i == 0) {
                result = String.valueOf(character);
                result = result.toUpperCase();
                continue;
            }

            if (numbefore == 32) {
                ch = String.valueOf(character);
                result += ch.toUpperCase();
                continue;
            }

            ch = String.valueOf(character);
            result += ch;
        }
        return result;
    }

    // public String toJadenCase(String phrase) {
    //     if (phrase == null || phrase.equals(""))
    //         return null;

    //     char[] array = phrase.toCharArray();

    //     for (int x = 0; x < array.length; x++) {
    //         if (x == 0 || array[x - 1] == ' ') {
    //             array[x] = Character.toUpperCase(array[x]);
    //         }
    //     }

    //     return new String(array);
    // }
}
