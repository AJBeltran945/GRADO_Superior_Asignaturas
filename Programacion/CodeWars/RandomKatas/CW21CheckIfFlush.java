package Programacion.CodeWars.RandomKatas;

public class CW21CheckIfFlush {
    public static boolean CheckIfFlush(String[] cards) {
        // Count occurrences of each suit
        int[] suitCount = new int[4];

        for (String card : cards) {
            char suit = card.charAt(card.length() - 1); // Extract the last character (suit)

            switch (suit) {
                case 'H':
                    suitCount[0]++;
                    break;
                case 'C':
                    suitCount[1]++;
                    break;
                case 'D':
                    suitCount[2]++;
                    break;
                case 'S':
                    suitCount[3]++;
                    break;
            }
        }

        // Check if any suit has 5 cards
        for (int count : suitCount) {
            if (count == 5) {
                return true;
            }
        }

        return false;
    }
}
