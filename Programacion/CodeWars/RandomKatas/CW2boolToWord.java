package Programacion.CodeWars.RandomKatas;

public class CW2boolToWord {
    public static void main(String[] args) {
        main(YesOrNo.boolToWord(true), "Yes");
        main(YesOrNo.boolToWord(false), "No");
    }

    private static void main(String s, String no) {
    }

    static class YesOrNo {
        public static String boolToWord(boolean b) {
            String s;
            if (b) {
                s = String.valueOf(b);
                s = "Yes";
            } else {
                s = String.valueOf(b);
                s = "No";
            }
            return s;
        }

    }
}
