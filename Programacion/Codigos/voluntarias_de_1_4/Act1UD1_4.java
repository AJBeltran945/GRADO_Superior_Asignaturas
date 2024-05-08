package voluntarias_de_1_4;

import java.util.Scanner;

public class Act1UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num, mayor = 0, menor = 9999;
        System.out.println("Dime 5 numeros: ");
        for(int i = 0; i > 5 ; i ++){
            num = sc.nextInt();
            if(num > mayor){
                mayor = num;
            }
            if(num < menor){
                menor = num;
            }
        }
        
        System.out.println("El numero mayor es: "+mayor);
        System.out.println("El numero menor es: "+menor);
        sc.close();
    }
}
