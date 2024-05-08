package voluntarias_de_1_4;

import java.util.Scanner;

public class Act4UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        System.out.println("Escriu el primer numero");
        int num1 = sc.nextInt();
        System.out.println("Escriu el segon numero");
        int num2 = sc.nextInt();
        System.out.println("Escriu el tercer numero");
        int num3 = sc.nextInt();
        
        System.out.println("Escriu el cuart numero");
        int num4 = sc.nextInt();

        if (num4 % num1 == 0) {
            System.out.println("El "+num4+" es divisor de "+num1);
        } else {
            System.out.println(num4+" no es divisor de "+num1);
        }
        if (num4 % num2 == 0) {
            System.out.println("El "+num4+" es divisor de "+num2);
        } else {
            System.out.println(num4+" no es divisor de " + num2);
        }
        if (num4 % num3 == 0) {
            System.out.println("El "+num4+" es divisor de "+num3);
        } else {
            System.out.println(num4+" no es divisor de "+num3);
        }
        sc.close();
    }
}
