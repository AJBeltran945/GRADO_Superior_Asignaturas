package voluntarias_de_1_4;

import java.util.Scanner;

public class Act12UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Escriu un nombre: ");
        int num = sc.nextInt();
        System.out.println("Escriu el primer numero");
        int num1 = sc.nextInt();
        System.out.println("Escriu un segon numero mayor al primer");
        int num2 = sc.nextInt();
        senar(num);
        senarsEntre(num1, num2);
        sc.close();
    }

    static void senar(int num) {
        if (num % 2 == 1) {
            System.out.println("El numero es senar");
        } else {
            System.out.println("El numero es parell");
        }
    }
    static void senarsEntre(int num1, int num2) {
        System.out.println("");
        for(int i=num1; i<=num2; i++ ) {
            if (i % 2 == 1) {
                System.out.println(i);
            }
        }
    }
}
