package Programacion.CodeWars.RandomKatas;

public class CW8TwiceAsOld {
    public static int TwiceAsOld(int dadYears, int sonYears) {
        int result, diference;
        if (sonYears == 0) {
            result = dadYears;
        }
        diference = sonYears * 2;

        if (diference < dadYears) {
            result = dadYears - diference;
        } else {
            result = diference - dadYears;
        }

        return result;
    }

}
