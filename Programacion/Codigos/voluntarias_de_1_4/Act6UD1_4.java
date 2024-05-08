package voluntarias_de_1_4;

import java.util.Scanner;

public class Act6UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Escriu laltura del rectangle: ");
        int altura = sc.nextInt();
        System.out.println("Esciur la base del rectangle: ");
        int base = sc.nextInt();

        for(int i=0;i<altura; i++) {
            for(int j=0;j<base;j++){
                System.out.print("*");
            }
            System.out.println("");
        }
        sc.close();
    }
}
