package Programacion.CodeWars.RandomKatas;

public class CW13countBy {
    public static int[] countBy(int x, int n){
        int[] result = new int[n];
        for (int i = 1; i <= n; i++){
          result [i-1] = x*i;
        }
        return result;
      }
}
