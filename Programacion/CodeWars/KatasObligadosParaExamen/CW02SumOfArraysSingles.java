package Programacion.CodeWars.KatasObligadosParaExamen;

public class CW02SumOfArraysSingles {
    public static void main(String[] args) {
        int a [] = {4,5,7,5,4,8};
        int result = repeats(a);
        System.out.println(result);
    }

    public static int repeats(int [] arr){
        int count = 0, result = 0;
        for (int i = 0; i < arr.length; i++){
            int num = arr[i];

            for(int j = 0; j< arr.length; j++){
                if (num == arr[j]) {
                    continue;
                }
                count++;
            }

            if (count == arr.length -1) {
                result += num;
                count= 0;
            }
            count = 0;
        }
        return result;
    }
}
