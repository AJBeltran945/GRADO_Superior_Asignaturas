package Programacion.CodeWars.RandomKatas;

import java.util.HashMap;

public class CW33romanNumHelper {
    private static final HashMap<Character, Integer> romanMap = new HashMap<>();
    
    static {
        romanMap.put('I', 1);
        romanMap.put('V', 5);
        romanMap.put('X', 10);
        romanMap.put('L', 50);
        romanMap.put('C', 100);
        romanMap.put('D', 500);
        romanMap.put('M', 1000);
    }
    
    public static int romanToInt(String roman) {
        int result = 0;
        int prevValue = 0;
        
        for (int i = roman.length() - 1; i >= 0; i--) {
            int value = romanMap.get(roman.charAt(i));
            
            if (value < prevValue) {
                result -= value;
            } else {
                result += value;
            }
            
            prevValue = value;
        }
        
        return result;
    }
    
    public static String intToRoman(int number) {
        if (number < 1 || number >= 4000) {
            throw new IllegalArgumentException("Input out of range");
        }
        
        int[] values = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
        String[] symbols = {"M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"};
        
        String result = "";
        
        for (int i = 0; i < values.length; i++) {
            while (number >= values[i]) {
                number -= values[i];
                result += symbols[i];
            }
        }
        
        return result;
    }
    
    public static void main(String[] args) {
        // Test romanToInt function
        System.out.println(romanToInt("MMMCCCXXXIII")); // Output: 1990
        System.out.println(romanToInt("MMVIII")); // Output: 2008
        System.out.println(romanToInt("MDCLXVI")); // Output: 1666
        
        // Test intToRoman function
        System.out.println(intToRoman(3333)); // Output: MCMXC
        System.out.println(intToRoman(2008)); // Output: MMVIII
        System.out.println(intToRoman(1666)); // Output: MDCLXVI
    }
    
}
