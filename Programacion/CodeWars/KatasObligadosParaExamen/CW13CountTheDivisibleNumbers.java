package Programacion.CodeWars.KatasObligadosParaExamen;

public class CW13CountTheDivisibleNumbers {
    public static void main(String[] args) {
        long a = 101;
        long b = 2147483647;
        long c = 11;
        long result = divisibleCount(a, b, c);
        System.out.println(result);
    }

    public static long divisibleCount(long x, long y, long k) {
        long result = 0;
        // Calculate how many numbers from x to y are divisible by k
        result = (y / k) - (x / k);
        // If x itself is divisible by k, add 1 to result
        if (x % k == 0) {
            result++;
        }
        return result;
    }

    // public static long divisibleCount(long x, long y, long k) {
    //     Long result = 0L;
    //     int numx = (int) x, numy = (int) y, numk = (int) k;
    //     for (int i = numx; i <= numy; i++) {
    //         if (i % numk == 0) {
    //             result++;
    //             continue;
    //         }
    //     }

    //     return result;
    // }
}
