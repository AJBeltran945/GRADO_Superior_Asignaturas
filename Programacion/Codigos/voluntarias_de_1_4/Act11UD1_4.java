package voluntarias_de_1_4;

import java.util.Scanner;

public class Act11UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Escriu un nombre: ");
        int num = sc.nextInt();

        senar(num);
        sc.close();
    }

    static void senar(int num) {
        if (num % 2 == 1) {
            System.out.println("El numero es senar");
        } else {
            System.out.println("El numero es parell");
        }
    }
}
