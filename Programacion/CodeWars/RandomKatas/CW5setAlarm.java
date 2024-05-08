package Programacion.CodeWars.RandomKatas;

public class CW5setAlarm {
    public static boolean setAlarm(boolean employed, boolean vacation) {
        boolean result = false;
        if (employed) {
            if (vacation == false) {
                result = true;
            }
        }
        return result;
    }
}
