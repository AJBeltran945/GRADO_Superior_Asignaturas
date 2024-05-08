package Programacion.CodeWars.RandomKatas;

public class explication {
    public static void main(String[] args) {
        char[][] a = { { 'U', 'N', 'O', 'P' },
                { 'R', 'G', 'O', 'J' },
                { 'C', 'Q', 'T', 'R' },
                { 'O', 'C', 'A', 'S' } };
        String b = "RCO";
        boolean result = esSum(a, b);
        System.out.println(result);
    }

    static boolean esSum(char[][] mat, String k) {
        if (k.length() > 4) {
            return false;
        }
        if (esVertical(mat, k)) {
            return true;
        }
        if (esHorizontal(mat, k)) {
            return true;
        }
        return false;
    }

    // static boolean esVertical(char[][] mat, String k) {
    // int count = 0;
    // int j = 0;
    // while (j < k.length()) {
    // for (int i = 0; i < mat.length; i++) {
    // if (j >= mat[i].length) {
    // return false;
    // }
    // if (mat[i][j] == k.charAt(count)) {
    // count++;
    // }
    // }
    // j++;
    // if (count == k.length()) {
    // return true;
    // }
    // count = 0;
    // }
    // return false;
    // }

    static boolean esHorizontal(char[][] mat, String k) {
        int count = 0;
        for (int i = 0; i < mat.length; i++) {
            for (int j = 0; j < mat[i].length; j++) {
                if (mat[i][j] == k.charAt(count)) {
                    count++;
                }
            }
            if (count == k.length()) {
                return true;
            }
            count = 0;
        }
        return false;
    }

    static boolean esVertical(char[][] mat, String k) {
        for (int j = 0; j <= mat[0].length - k.length(); j++) {
            for (int i = 0; i <= mat.length - 1; i++) {
                int count = 0;
                for (int l = 0; l < k.length(); l++) {
                    if (i + l >= mat.length) {
                        break; // Break if we exceed the row boundary
                    }
                    if (mat[i + l][j] == k.charAt(l)) {
                        count++;
                    }
                }
                if (count == k.length()) {
                    return true;
                }
            }
        }
        return false;
    }

    static boolean esHorizontal(char[][] mat, String k) {
        for (int i = 0; i <= mat.length - 1; i++) {
            for (int j = 0; j <= mat[0].length - k.length(); j++) {
                int count = 0;
                for (int l = 0; l < k.length(); l++) {
                    if (j + l >= mat[0].length) {
                        break; // Break if we exceed the column boundary
                    }
                    if (mat[i][j + l] == k.charAt(l)) {
                        count++;
                    }
                }
                if (count == k.length()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isLove(final int flower1, final int flower2) {
        if (flower1 % 2 == 0 && flower2 % 2 != 0 || flower2 % 2 == 0 && flower1 % 2 != 0) {
            return true;
        }
        return false;
    }

    public static int sortDesc(final int num) {
        String nuString = String.valueOf(num);
        char[] charArray = nuString.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            for (int j = 0; j < charArray.length - 1 - i; j++) {
                int num1 = Character.getNumericValue(charArray[j]);
                int num2 = Character.getNumericValue(charArray[j + 1]);
                if (num2 > num1) {
                    char temp = charArray[j];
                    charArray[j] = charArray[j + 1];
                    charArray[j + 1] = temp;
                }
            }
        }
        return Integer.parseInt(new String(charArray));
    }
}
