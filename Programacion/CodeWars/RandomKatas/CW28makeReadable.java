package Programacion.CodeWars.RandomKatas;

public class CW28makeReadable {
    public static void main(String[] args) {
        int second = 59;
        String result = makeReadable(second);
        System.out.println(result);
    }
    public static String makeReadable(int seconds) {
        // String result = "";
        String hora ="", min="", sec="";
        int h, m, s, total;

        if (seconds == 0) {
            return "00:00:00";
        }

        s = seconds % 60;
        total = seconds / 60;
        m = total % 60;
        h = total / 60;

        for (int i = 0; i < 10; i++) {
            if (s == i) {
                sec += "0";
                sec += String.valueOf(i);
            }
            if (m == i) {
                min += "0";
                min += String.valueOf(i);
            }
            if (h == i) {
                hora += "0";
                hora += String.valueOf(i);;
            }
        }

        if (s > 9){
            sec = intToString(s);
        }
        if (m > 9){
            min = intToString(m);
        }
        if (h > 9){
            hora = intToString(h);
        }        

        return hora + ":" + min + ":" + sec;
    }

    public static String intToString(int num) {
        String str = String.valueOf(num);
        return str;
    }
}

// public class HumanReadableTime {
//     public static String makeReadable(int seconds) {
//         int h = seconds/60/60;
//         int min = seconds/60%60;
//         int sec = seconds%60;
//         return String.format("%02d:%02d:%02d",h,min,sec);
//     }
// }
