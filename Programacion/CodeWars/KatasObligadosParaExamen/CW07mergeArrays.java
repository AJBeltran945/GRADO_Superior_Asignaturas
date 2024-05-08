package Programacion.CodeWars.KatasObligadosParaExamen;

import java.util.Arrays;

public class CW07mergeArrays {
    public static int[] mergeArrays(int[] first, int[] second) {
    
    for (int i = 0; i<second.length; i++){
      int num = second[i];
      first = Arrays.copyOf(first, first.length+1);
      first[first.length-1] = num;
    }
    
    int result[] = new int[0];
    for(int i = 0; i<first.length; i++){
      int num = first[i];
      if(norepite(result,num)){
        result = Arrays.copyOf(result, result.length+1);
        result[result.length-1] = num;
      }
    }
    
    Arrays.sort(result);
    return result;
	}
  
  static boolean norepite (int[] tabla, int num){
    for (int i = 0; i<tabla.length; i++){
      if (tabla[i] == num){
        return false;
      }
    }
    return true;
  }
}
