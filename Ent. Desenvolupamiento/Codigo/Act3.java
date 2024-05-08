package Ent. Desenvolupamiento.Codigo;
import java.util.Scanner;

public class Act3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Ingrese la nota del examen de programación: ");
        double nota = scanner.nextDouble();

        if (nota >= 5.0) {
            System.out.println("¡Felicidades! Ha aprobado el examen.");
        } else {
            System.out.println("Debe recuperar el examen.");
        }

        scanner.close();
    }
}
