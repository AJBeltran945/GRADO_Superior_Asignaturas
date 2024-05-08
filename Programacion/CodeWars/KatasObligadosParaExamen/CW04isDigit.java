package Programacion.CodeWars.KatasObligadosParaExamen;

public class CW04isDigit {
    public static void main(String[] args) {
        String a = "14";
        boolean result = isDigit(a);
        System.out.println(result);
    }


    public static boolean isDigit(String s) {
        return s.matches("[0-9]");
      }
}
