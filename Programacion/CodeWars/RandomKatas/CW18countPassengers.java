package Programacion.CodeWars.RandomKatas;

import java.util.ArrayList;

public class CW18countPassengers {
    public static int countPassengers(ArrayList<int[]> stops) {
        int TotalPass = 0;
        for (int i = 0; i < stops.size(); i++) {
            int[] CurStop = stops.get(i);
            int sum, rest;
            sum = CurStop[0];
            rest = CurStop[1];
            TotalPass += sum;
            TotalPass -= rest;
        }
        return TotalPass;
    }
}
