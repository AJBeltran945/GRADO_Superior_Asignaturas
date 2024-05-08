package Programacion.CodeWars.RandomKatas;

public class CW4dontGiveMeFive {
    public static int dontGiveMeFive(int start, int end)
  {
    int count = 0;

        for (int i = start; i <= end; i++) {
            if (String.valueOf(i).indexOf('5') == -1) {
                count++;
            }
        }
        return count;
  }
}
