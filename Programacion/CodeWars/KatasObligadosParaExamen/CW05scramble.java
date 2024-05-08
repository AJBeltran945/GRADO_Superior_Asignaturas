package Programacion.CodeWars.KatasObligadosParaExamen;

public class CW05scramble {
    public static void main(String[] args) {
        String a = "abcdefghijklmnopqrstuvwxyz";
        String b = "zyxcba";
        boolean result = scramble(a, b);
        System.out.println(result);
    }

    public static boolean scramble(String str1, String str2) {    
        // Crear un arreglo de 26 enteros para contar las frecuencias de las letras
        int[] counts = new int[26];
        // Recorrer la primera cadena y aumentar el contador correspondiente a cada letra
        for (char c : str1.toCharArray()) {
            counts[c - 'a']++;
        }
        // Recorrer la segunda cadena y disminuir el contador correspondiente a cada letra
        for (char c : str2.toCharArray()) {
            counts[c - 'a']--;
        }
        // Comprobar si algún contador es negativo, lo que significa que la letra no está en la primera cadena
        for (int count : counts) {
            if (count < 0) {
                return false;
            }
        }
        // Si todos los contadores son positivos o cero, significa que la primera cadena se puede reordenar para formar la segunda
        return true;
    }
}
