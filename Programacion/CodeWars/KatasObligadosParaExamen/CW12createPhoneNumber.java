package Programacion.CodeWars.KatasObligadosParaExamen;

public class CW12createPhoneNumber {
    public static void main(String[] args) {
        int a[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 };
        String result = createPhoneNumber(a);
        System.out.println(result);
    }

    public static String createPhoneNumber(int[] numbers) {
        String result = "(";

        for(int i = 0; i < 3; i++){
            int num = numbers[i];
            result += num;
        }

        result += ") ";

        for(int i = 3; i < 6; i++){
            int num = numbers[i];
            result += num;
        }

        result += "-";

        for(int i = 6; i < numbers.length; i++){
            int num = numbers[i];
            result += num;
        }

        return result;
    }
}
