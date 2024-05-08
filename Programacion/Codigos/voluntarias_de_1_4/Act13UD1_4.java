package voluntarias_de_1_4;

import java.util.Scanner;

public class Act13UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Escriu un nombre: ");
        int num = sc.nextInt();
        System.out.println("Escriu el primer numero");
        int num1 = sc.nextInt();
        System.out.println("Escriu un segon numero mayor al primer");
        int num2 = sc.nextInt();
        boolean parell = false;
        senar(num);
        senarsEntre(num1, num2);
        senarsEntre(num1, num2,parell);
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
        System.out.print("Els nombre senars entre els nombres esgafats son: ");
        for(int i=num1; i<=num2; i++ ) {
            if (i % 2 == 1) {
                System.out.print(i+" ");
            }
        }
        System.out.println();
    }
    static void senarsEntre(int num1, int num2, boolean parell) {
        System.out.print("Els nombre parells entre els nombres esgafats son: ");
        for(int i=num1; i<=num2; i++ ) {
            if (i % 2 == 0) {
                parell = true;
                System.out.print(i+" ");
            }
        }
    }
}
