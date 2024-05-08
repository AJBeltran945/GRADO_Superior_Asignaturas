package Programacion.CodeWars.RandomKatas;

public class CW23findShort {
    public static int findShort(String s) {
        int finalResult = 999999;
        String[] arrOfStr = s.split(" ", 0);
        
        for (int i = 0; i < arrOfStr.length; i++) {
            String word = arrOfStr[i];
            int result = 0;
            for (int j = 0; j < word.length(); j++) {
                result++;
            }
            if (result < finalResult) {
                finalResult = result;
            }
        }
        return finalResult;
    }
}
