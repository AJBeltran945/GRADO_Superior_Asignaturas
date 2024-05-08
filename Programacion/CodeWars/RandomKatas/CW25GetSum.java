package Programacion.CodeWars.RandomKatas;

public class CW25GetSum {
    public int GetSum(int a, int b) {
        if (a == b) {
            return a;
        } else if (a < b) {
            int sum = 0;
            for (int i = a; i <= b; i++) {
                sum += i;
            }
            return sum;
        } else {
            int sum = 0;
            for (int i = b; i <= a; i++) {
                sum += i;
            }
            return sum;
        }
    }
}
