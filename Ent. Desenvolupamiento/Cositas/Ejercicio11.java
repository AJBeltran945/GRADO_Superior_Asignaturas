
package ejercicio11;

import java.util.Scanner;

public class Ejercicio11 {

    public static void main(String[] args) {
        /*
         * Ejercicio-11
         * Ingresar 10 valores numéricos y obtener el promedio de los que
         * estén comprendidos entre 5 y 5000 ambos inclusive, imprimir el resultado
         */

        Scanner sc = new Scanner(System.in);

        int comprendidos = 0;
        int contador = 0;

        for (int i = 0; i < 10; i++) {

            System.out.println("Introduce un numero:  ");
            int numero = sc.nextInt();

            if (numero >= 5 && numero <= 5000) {
                comprendidos += numero;
                contador++;

            }

        }
        System.out.println("Promedio: " + comprendidos / contador);

    }
}
