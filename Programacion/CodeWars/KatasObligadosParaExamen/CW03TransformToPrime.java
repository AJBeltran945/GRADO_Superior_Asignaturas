package Programacion.CodeWars.KatasObligadosParaExamen;

public class CW03TransformToPrime {
    public static void main(String[] args) {
        int a[] = { 50, 39, 49, 6, 17, 28 };
        int result = minimumNumber(a);
        System.out.println(result);
    }

    public static int minimumNumber(int[] numbers) {
        int result = 0;
        int sum = 0, count = 1;

        for (int i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        if(!noEsPrimo(sum)){
            return 0;
        }

        while (count > 0) {
            sum += 1;
            if (!noEsPrimo(sum)) {
                result = count;
                break;
            }
            count++;
        }
        return result;
    }

    private static boolean noEsPrimo(int num) {
        boolean flag= false;
        for (int i = 2; i < num / 2; i++) {
            if (num % i == 0) {
                flag = true;
                break;
            }
        }
        return flag;
    }
}
