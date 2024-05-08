package Programacion.CodeWars.KatasObligadosParaExamen;

public class CW08EsMultipleDe3y5 {
    public static void main(String[] args) {
        int a = 10;
        int result = solution(a);
        System.out.println(result);
    }

    public static int solution(int number) {
        int result = 0;
        for (int i = 1; i < number; i++) {
            if (esMult3(i)) {
                result += i;
            } else if (esMult5(i)) {
                result += i;
            }
        }
        return result;
    }

    private static boolean esMult3(int num) {
        int resta = num % 3;
        if (resta == 0) {
            return true;
        } else {
            return false;
        }
    }

    private static boolean esMult5(int num) {
        int resta = num % 5;
        if (resta == 0) {
            return true;
        } else {
            return false;
        }
    }
}
