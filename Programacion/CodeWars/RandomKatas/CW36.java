package Programacion.CodeWars.RandomKatas;

public class CW36 {
    public static void main(String[] args) {
        String a = "This is an example!";
        String result = reverseWords(a);
        System.out.println(result);
    }

    public static String reverseWords(final String original) {
        if (original == "") {
            return original;
        }
        char ch = original.charAt(0);
        if ( ch == ' ') {
            return original;
        }
        String result = "";
        String[] arrOfStr = original.split(" ");
        for (int i = 0; i < arrOfStr.length; i++) {
            if (i == arrOfStr.length - 1) {
                String word = arrOfStr[i];
                String Fword = "";
                for (int j = word.length() - 1; j >= 0; j--) {
                    char ch1 = word.charAt(j);
                    Fword += ch1;
                }
                result += Fword;
                break;
            }
            String word = arrOfStr[i];
            String Fword = "";
            for (int j = word.length() - 1; j >= 0; j--) {
                char ch1 = word.charAt(j);
                Fword += ch1;
            }
            result += Fword + " ";
        }
        return result;
    }
}
