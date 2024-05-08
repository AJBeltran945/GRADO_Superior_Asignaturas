package Programacion.CodeWars.RandomKatas;

public class CW17getGrade {
    public static char getGrade(int s1, int s2, int s3) {
        int avg;
        char result = 'F';
        avg = (s1 + s2 + s3) / 3;
        if (avg <= 100 && avg >= 90) {
            result = 'A';
        } else if (avg < 90 && avg >= 80) {
            result = 'B';
        } else if (avg < 80 && avg >= 70) {
            result = 'C';
        } else if (avg < 70 && avg >= 60) {
            result = 'D';
        }
        return result;
    }
}
