package ejercicio9;

import java.util.Scanner;

public class Ejercicio9 {

    public static void main(String[] args) {
        /*
         * }
         * Ejercicio-9
         * Ingresar valores por teclado y acumularlos en una variable, detener el
         * proceso
         * cuando la suma supere los 78500, imprimir el resultado en cada suma
         */

        Scanner sc = new Scanner(System.in);
        int max = 0;

        while (max <= 78500) {
            System.out.println("Introduce un numero:");
            int numero = sc.nextInt();
            max += numero;

            System.out.println("La suma actual es: " + max);
        }

    }
}
