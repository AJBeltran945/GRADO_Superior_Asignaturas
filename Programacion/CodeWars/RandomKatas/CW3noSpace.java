package Programacion.CodeWars.RandomKatas;

public class CW3noSpace {
    public static void main(String[] args) {
        String texto = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc semper odio sit amet cursus elementum. Mauris arcu nisl, efficitur ac dignissim quis, maximus quis risus. Proin ut feugiat tellus. Duis malesuada pulvinar lacus, vel aliquam ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse potenti. Suspendisse potenti. Duis quis metus a nisl accumsan egestas quis in nibh. Curabitur interdum tortor urna, vel tristique metus commodo quis. Integer ac consectetur nunc. Nam quis nulla aliquam risus fringilla faucibus quis ut magna.";
        int count = noSpace(texto);

        System.out.println(count);

    }

    static int noSpace(String texto){
        int count = 0;
        for(int i= 0; i <texto.length(); i++){
            if (texto.charAt(i) == 'a'){
                count++;
            }
        }
        return count;
    }
}
