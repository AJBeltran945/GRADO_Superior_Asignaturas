package voluntarias_de_1_4;

import java.util.Scanner;

public class Act15UD1_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("1 per veure hora valida. 2 per veure data valida. 3 veure quant ha passat entre dues dates.");
        System.out.println("4 veure quant ha passat entre hores dates. 5. Quants segons han passat entre les dues dates i hores especificades");
        int num = sc.nextInt();
        if (num == 1) {
            System.out.println("Escriu la hora");
            int hores = sc.nextInt();
            System.out.println("Escriu els minuts");
            int minuts = sc.nextInt();
            System.out.println("Escriu els segons");
            int segons = sc.nextInt();
            horaValida(hores, minuts, segons);
        } else if (num == 2) {
            System.out.println("Escriu el any");
            int any = sc.nextInt();
            System.out.println("Escriu el mes");
            int mes = sc.nextInt();
            System.out.println("Escriu el dia");
            int dia = sc.nextInt();
            dataValida(any, mes, dia);
        } else if (num == 3) {
            System.out.println("Escriu la pirmera data");
            int any = sc.nextInt();
            int mes = sc.nextInt();
            int dia = sc.nextInt();
            System.out.println("Esrciu la segona data");
            int any2 = sc.nextInt();
            int mes2 = sc.nextInt();
            int dia2 = sc.nextInt();
            if ((any >= 1 && any <= 2023) && (mes > 0 && mes <= 12) && (dia > 0 && dia <= 30) && (any2 >= 1 && any2 <= 2023) && (mes2 > 0 && mes2 <= 12) && (dia2 > 0 && dia2 <= 30)) {
                System.out.println(entreDates(any, any2, mes, mes2, dia, dia2)+" dies");
            } else {
                System.out.println("Introdueix una data valida");
            }
        } else if (num == 4) {
            System.out.println("Escriu la pirmera hora");
            int hores = sc.nextInt();
            int minuts = sc.nextInt();
            int segons = sc.nextInt();
            System.out.println("Esrciu la segona hora");
            int hores2 = sc.nextInt();
            int minuts2 = sc.nextInt();
            int segons2 = sc.nextInt();
            if ((hores >= 0 && hores <= 24) && (minuts >= 0 && minuts <= 60) && (segons >= 0 && segons <= 60) && (hores2 >= 0 && hores2 <= 24) && (minuts2 >= 0 && minuts2 <= 60) && (segons2 >= 0 && segons2 <= 60) ) {
                System.out.println(entreHores(hores, hores2, minuts, minuts2, segons, segons2)+" segons");
            } else {
                System.out.println("Introdueix una data valida");
            }
        } else if (num == 5) {
            System.out.println("Escriu la pirmera data");
            int any = sc.nextInt();
            int mes = sc.nextInt();
            int dia = sc.nextInt();
            System.out.println("Esrciu la segona data");
            int any2 = sc.nextInt();
            int mes2 = sc.nextInt();
            int dia2 = sc.nextInt();
            System.out.println("Escriu la pirmera hora");
            int hores = sc.nextInt();
            int minuts = sc.nextInt();
            int segons = sc.nextInt();
            System.out.println("Esrciu la segona hora");
            int hores2 = sc.nextInt();
            int minuts2 = sc.nextInt();
            int segons2 = sc.nextInt();
            int segonsTotals = entreDates(any,any2,mes,mes2,dia,dia2) * 86400;
            System.out.println("Els segons que han passat entre les dues dates i hores son: "+segonsTotals+entreHores(hores,hores2,minuts,minuts2,segons,segons2));
        }
        sc.close();
    }
    static void horaValida (int hores, int minuts, int segons) {
        if ((hores >= 0 && hores <= 24) && (minuts >= 0 && minuts <= 60) && (segons >= 0 && segons <= 60) ) {
            System.out.println("Es una hora valida");
        } else {
            System.out.println("Introdueix una hora valida");
        }
    }

    static void dataValida (int any, int mes, int dia) {
        if (any < 1 || any > 2023) {
            System.out.println("La data no es valida");
        } else if (mes < 1 || mes > 12) {
            System.out.println("La data no es valida");
        } else {
            switch (mes) {
                case 1:
                case 2:
                    if (dia < 0 || dia > 28) {
                        System.out.println("La data no es valida");
                    } else {
                        System.out.println("La data es valida");
                    }
                    break;
                case 4:
                case 6:
                case 9:
                case 11:
                    if ( dia <0 || dia > 30) {
                        System.out.println("La data no es valida");
                    } else {
                        System.out.println("La data es valida");
                    }
                    break;
                default:
                    if (dia < 0 || dia > 31) {
                        System.out.println("La data no es valida");
                    } else {
                        System.out.println("La data es valida");
                    }
                    break;
            }
        }
    }
    static int entreDates(int any, int any2, int mes, int mes2, int dia, int dia2) {
        int entre = (any*365 - any2*365) + (mes*30 - mes2*30) + (dia - dia2);
        if (entre<0) {
            entre *= -1;
        }
        return entre;
    }

    static int entreHores(int hores, int hores2, int minuts, int minuts2, int segons, int segons2) {
        int entre = (hores*3600 - hores2*3600) + (minuts*60 - minuts2*60) + (segons - segons2);
        if(entre < 0) {
            entre *= -1;
        }
        return entre;
    }  
}
