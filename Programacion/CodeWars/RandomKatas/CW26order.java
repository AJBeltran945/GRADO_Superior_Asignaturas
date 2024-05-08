package Programacion.CodeWars.RandomKatas;

public class CW26order {

    public static void main(String[] args) {
        String phrase = "is2 Thi1s T4est 3a";
        String result = order(phrase);
        System.out.println(result);
    }

    public static String order(String words) {
        String result = "";
        if (words == result){
            return result;
        }
        String[] wordList = words.split(" ", 0);

        String[] finalWordList = new String[wordList.length];

        for (int i = 0; i < wordList.length; i++) {
            String word = wordList[i];

            for (int j = 0; j < word.length(); j++) {
                char ch = word.charAt(j);
                for (int l = 1; l <= wordList.length; l++) {
                    if (Character.getNumericValue(ch) == l) {
                        finalWordList[l - 1] = wordList[i];
                    }
                }
            }
        }

        for (int i = 0; i < finalWordList.length; i++) {
            String word = finalWordList[i];
            if (i == finalWordList.length - 1) {
                result += word;
                break;
            }
            result += word;
            result += " ";
        }
        return result;
    }
}
