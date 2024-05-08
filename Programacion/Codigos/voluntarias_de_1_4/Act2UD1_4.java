package voluntarias_de_1_4;

import java.util.Scanner;

public class Act2UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Escriu el primer num: ");
        int num1 = sc.nextInt();
        System.out.println("Escriu el segon num: ");
        int num2 = sc.nextInt();
        System.out.println("Escriu el tercer num: ");
        int num3 = sc.nextInt();
        System.out.println("Escriu el quart num: ");
        int num4 = sc.nextInt();
        System.out.println("Escriu el cinque num: ");
        int num5 = sc.nextInt();
        
        if (num1 < num2 && num2 < num3 && num3 < num4 && num4 < num5) {
            System.out.println("Els nombres estan en ordre creixent");
        } else if (num1 > num2 && num2 > num3 && num3 > num4 && num4 > num5) {
            System.out.println("Els nombre estan ordre decreixent");
        } else {
            System.out.println("Els nombres estan desordena");
        }
        sc.close();
    }
}
