package voluntarias_de_1_4;

import java.util.Scanner;
//LLuis Muñoz Barcelo
public class Act3UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Escriu 1 per calcular l'area del triangle o 2 per l'area del cuadrat: ");
        int num = sc.nextInt();

        if (num == 1) {
            System.out.println("Escriu la base del triangle: ");
            double base = sc.nextDouble();
            System.out.println("Escriu la altura del triangle: ");
            double altura = sc.nextDouble();
            double areaTriangle = base * altura / 2;
            System.out.println(areaTriangle);
        } else if (num == 2) {
            System.out.println("Escriu el costat del cuadrat: ");
            double costat = sc.nextDouble();
            double areaCuadrat = Math.pow(costat,2);
            System.out.println(areaCuadrat);
        } else {
            System.out.println("Intrododueix un numero valid");
        }
        sc.close();
    }
}
