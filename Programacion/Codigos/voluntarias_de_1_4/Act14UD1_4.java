package voluntarias_de_1_4;

import java.util.Scanner;

public class Act14UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("1 per Volum cilindre, 2 per Volum cub, 3 per Volum esfera, 4 per esgafar figura y fer calculs.");
        int num = sc.nextInt();

        if (num == 1) {
            System.out.println("El volum del cilindre es: "+volumCilindre()+" cm cubics");
        } else if (num == 2) {
            System.out.println("El volum del cub es: "+volumCub()+" cm cubics");
        } else if (num == 3) {
            System.out.println("El volum de la esfera es: "+volumEsfera()+" cm cubics");
        } else if (num == 4) {
            esgafarFigura();
        } else {
            System.out.println("el nombre esgafat no es valid, ha de ser del 1 al 4");
        }
        sc.close();
    }

    static double volumCilindre() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Has esgafat calcular el Volum del Cilindre:");
        System.out.println("Escriu el radi (en centimetres): ");
        double radi = sc.nextDouble();
        System.out.println("Escriu la mida de la altura (en centimetres): ");
        double altura = sc.nextDouble();
        double volumCilindre = Math.PI * Math.pow(radi, 2) * altura;
        sc.close();
        return volumCilindre;
    }

    static double volumCub() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Has esgafat calcular el Volum del Cub:");
        System.out.println("Escriu la mida del costat del cub (en centimetres): ");
        double costat = sc.nextDouble();
        double volumCub = Math.pow(costat, 3);
        sc.close();
        return volumCub;
    }

    static double volumEsfera() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Has esgafat calcular el Volum duna esfera:");
        System.out.println("Escriu el radi (en centimetres): ");
        double radi = sc.nextDouble();
        double volumEsfera = (4 * Math.PI) / 3 * Math.pow(radi, 3);
        sc.close(); 
        return volumEsfera;
    }

    static void esgafarFigura() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Quina figura utilitzaras com a recipient?:");
        int num = sc.nextInt();
        if (num == 1) {
            System.out.println("Quin volum vols ficar: ");
            double volumCilindre = sc.nextDouble();
            if (volumCilindre <= volumCilindre()) {
                System.out.println("El volum elegit cap dins la figura");
            } else {
                System.out.println("El volum elegit no cap dins la figura");
            }
        } else if (num == 2) {
            System.out.println("Quin volum vols ficar: ");
            double volumCub = sc.nextDouble();
            if (volumCub <= volumCub()) {
                System.out.println("El volum elegit cap dins la figura");
            } else {
                System.out.println("El volum elegit no cap dins la figura");
            }
        } else if (num == 3) {
            System.out.println("Quin volum vols ficar: ");
            double volumEsfera = sc.nextDouble();
            if (volumEsfera <= volumEsfera()) {
                System.out.println("El volum elegit cap dins la figura");
            } else {
                System.out.println("El volum elegit no cap dins la figura");
            }
        }
        sc.close();
    }
}
