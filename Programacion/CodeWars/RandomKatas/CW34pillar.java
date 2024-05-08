package Programacion.CodeWars.RandomKatas;

public class CW34pillar {
    public static void main(String[] args) {
        int a , b, c;
        a = 11;
        b = 15;
        c = 30;
        int result = pillars(a,b,c);
        System.out.println(result);

    }

    public static int pillars(int numPill, int dist, int width){
        
        if (numPill >2) {
            return ((numPill-2)*(width))+((numPill-1)*(dist*100));
        }else if (numPill == 2) {
            return dist *100;
        }
        return 0;
    }
}
