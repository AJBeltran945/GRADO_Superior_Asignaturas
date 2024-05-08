package Programacion.CodeWars.KatasObligadosParaExamen;

public class CW06encryptThis {
    public static void main(String[] args) {
        String a = "Santi tonto";
        String result = encryptThis(a);
        System.out.println(result);
    }

    public static String encryptThis(String text) {
        String[] allWords = text.split(" ");
        String result = "";
        for (int i = 0; i < allWords.length; i++) {
            String word = allWords[i];
            String resultWord = "";
            if (i == allWords.length - 1) {
                if (word.length() < 3) {
                    for (int j = 0; j < word.length(); j++) {
                        if (j == 0) {
                            char ch = word.charAt(j);
                            int ascii = (int) ch;
                            resultWord += String.valueOf(ascii);
                            continue;
                        }
                        char ch = word.charAt(j);
                        resultWord += ch;
                    }
                    result += resultWord;
                    continue;
                }
                for (int j = 0; j<word.length(); j++){
                    if (j == 0) {
                        char ch = word.charAt(j);
                        int ascii = (int) ch;
                        resultWord += String.valueOf(ascii);
                        continue;
                    }
                    if (j == 1) {
                        char ch = word.charAt(word.length()-1);
                        resultWord += ch;
                        continue;
                    }
                    if (j == word.length()-1) {
                        char ch = word.charAt(1);
                        resultWord += ch;
                        continue;
                    }
                    char ch = word.charAt(j);
                    resultWord += ch;
                }
    
                result += resultWord;
                continue;
            }
            if (word.length() < 3) {
                for (int j = 0; j < word.length(); j++) {
                    if (j == 0) {
                        char ch = word.charAt(j);
                        int ascii = (int) ch;
                        resultWord += String.valueOf(ascii);
                        continue;
                    }
                    char ch = word.charAt(j);
                    resultWord += ch;
                }
                result += resultWord+" ";
                continue;
            }

            for (int j = 0; j<word.length(); j++){
                if (j == 0) {
                    char ch = word.charAt(j);
                    int ascii = (int) ch;
                    resultWord += String.valueOf(ascii);
                    continue;
                }
                if (j == 1) {
                    char ch = word.charAt(word.length()-1);
                    resultWord += ch;
                    continue;
                }
                if (j == word.length()-1) {
                    char ch = word.charAt(1);
                    resultWord += ch;
                    continue;
                }
                char ch = word.charAt(j);
                resultWord += ch;
            }

            result += resultWord + " ";

        }
        return result;
    }
}
