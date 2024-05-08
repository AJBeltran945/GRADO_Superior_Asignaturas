package Programacion.CodeWars.RandomKatas;

import java.util.Objects;
import java.util.Scanner;

public class CW1confirm {
    public static void main(String[] args) {
        String userF = "Usuario", contraF = "Password";
        boolean corecta = false;
        int count = 0;
        confirm(userF, contraF,count,corecta);
    }

    static void confirm(String userF, String contraF, int count, boolean corecta){
        try (Scanner sc = new Scanner(System.in)) {
            for (int i = 0; i < 3; i++) {
                System.out.println("Usuario: ");
                String usu = sc.next();
                System.out.println("Contraseña: ");
                String contra = sc.next();

                count++;

                if (Objects.equals(usu, userF) && Objects.equals(contra, contraF)) {
                    corecta = true;
                    break;
                }
            }
        }
        System.out.println("Fin del programa, el usuario y contraseña es: "+ corecta);
        System.out.println("Intentos hechos: "+count);
}
}
