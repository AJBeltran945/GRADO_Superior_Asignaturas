package voluntarias_de_1_4;

import java.util.Scanner;

public class Act7UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Escriu laltura del triangle que vols dibuixar: ");
        int altura = sc.nextInt();
        for(int i=1; i<=altura; i++) {
            for(int j=1; j<=i;j++) {
                System.out.print("*");
            }
            System.out.println();
        }    
        sc.close();
    }
}
