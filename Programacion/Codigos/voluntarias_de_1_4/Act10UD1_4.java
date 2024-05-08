package voluntarias_de_1_4;

import java.util.Scanner;

public class Act10UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Escriu un nombre: ");
        int num = sc.nextInt();
        System.out.print("Els divisors de "+num+" son: ");
        for(int i=1; i<=num; i++){
            if (num % i == 0) {
                System.out.print(i + " ");
            }
        }
        sc.close();
    }
}
