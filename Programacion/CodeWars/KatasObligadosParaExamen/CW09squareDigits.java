package Programacion.CodeWars.KatasObligadosParaExamen;

public class CW09squareDigits {
    public int squareDigits(int n) {
        int finalResult;
        String result = "";
        String string = Integer.toString(n);
        for (int i = 0; i < string.length(); i++) {
            char ch = string.charAt(i);
            int numChar = Character.getNumericValue(ch);
            numChar = numChar * numChar;
            String s = String.valueOf(numChar);
            result += s;
        }
        finalResult = Integer.valueOf(result);
        return finalResult;
    }
}
