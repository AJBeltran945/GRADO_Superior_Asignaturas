package Ent. Desenvolupamiento.Codigo;
import java.util.Scanner;

public class Act11 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        double suma = 0;
        int cantidadValoresAceptados = 0;

        for (int i = 0; i < 10; i++) {
            System.out.print("Ingrese el valor " + (i + 1) + ": ");
            double valor = scanner.nextDouble();

            if (valor >= 5 && valor <= 5000) {
                suma += valor;
                cantidadValoresAceptados++;
            }
        }

        if (cantidadValoresAceptados > 0) {
            double promedio = suma / cantidadValoresAceptados;
            System.out.println("El promedio de los valores comprendidos entre 5 y 5000 es: " + promedio);
        } else {
            System.out.println("No se ingresaron valores comprendidos entre 5 y 5000.");
        }

        scanner.close();
    }
}
