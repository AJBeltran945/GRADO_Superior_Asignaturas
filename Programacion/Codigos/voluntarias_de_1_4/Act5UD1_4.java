package voluntarias_de_1_4;

import java.util.Scanner;

public class Act5UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Escriu un nombre: ");
        int num1 = sc.nextInt();
        System.out.println("Escriu el segon numero: ");
        int num2 = sc.nextInt();
        int suma = 0;
        if (num1 > num2) {
            for(int i = num2; i<=num1; i++) {
                suma += i;
            }
            System.out.println("La suma de "+num2+" fins a "+num1+" es: "+ suma);
        } else if (num1 < num2) {
            for(int i = num1; i<=num2; i++) {
                suma += i;
            }
            System.out.println("La suma de "+num1+" fins a "+num2+" es: "+ suma);
        }
        sc.close();
    }
}
