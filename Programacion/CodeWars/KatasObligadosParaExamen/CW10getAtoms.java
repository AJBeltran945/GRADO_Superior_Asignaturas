package Programacion.CodeWars.KatasObligadosParaExamen;

import java.util.HashMap;
import java.util.Map;

public class CW10getAtoms {
    public static void main(String[] args) {
        String a = "K4[ON(SO3)2]2";
        @SuppressWarnings("rawtypes")
        Map result = getAtoms(a);
        System.out.println(result);
    }

    public static Map<String, Integer> getAtoms(String formula) {
        if (!isValidFormula(formula)) {
            throw new IllegalArgumentException("Invalid formula: " + formula);
        }

        HashMap<String, Integer> atoms = new HashMap<>();
        int multiplier = 1;

        for (int i = 0; i < formula.length(); i++) {
            char ch = formula.charAt(i);

            if (Character.isUpperCase(ch)) {
                String element = String.valueOf(ch);
                while (i + 1 < formula.length() && Character.isLowerCase(formula.charAt(i + 1))) {
                    element += formula.charAt(++i);
                }
                int count = 0;
                while (i + 1 < formula.length() && Character.isDigit(formula.charAt(i + 1))) {
                    count = count * 10 + (formula.charAt(++i) - '0');
                }
                count = count == 0 ? 1 : count;
                atoms.put(element, atoms.getOrDefault(element, 0) + count * multiplier);
            } else if (ch == '(' || ch == '[' || ch == '{') {
                int closingIndex = findClosingBracket(formula, i);
                int count = getCount(formula, closingIndex + 1);
                Map<String, Integer> subAtoms = getAtoms(formula.substring(i + 1, closingIndex));
                for (Map.Entry<String, Integer> entry : subAtoms.entrySet()) {
                    atoms.put(entry.getKey(),
                            atoms.getOrDefault(entry.getKey(), 0) + entry.getValue() * count * multiplier);
                }
                i = closingIndex;
            } else if (Character.isDigit(ch)) {
                multiplier = 0;
                while (i < formula.length() && Character.isDigit(formula.charAt(i))) {
                    multiplier = multiplier * 10 + (formula.charAt(i++) - '0');
                }
                i--; // Move back one step as for loop will increment it again
            }
        }
        return atoms;
    }

    private static int findClosingBracket(String formula, int openingIndex) {
        char openingBracket = formula.charAt(openingIndex);
        char closingBracket = closingBracket(openingBracket);
        int count = 0;
        for (int i = openingIndex + 1; i < formula.length(); i++) {
            char ch = formula.charAt(i);
            if (ch == openingBracket) {
                count++;
            } else if (ch == closingBracket) {
                if (count == 0) {
                    return i;
                } else {
                    count--;
                }
            }
        }
        return -1; // Unmatched bracket
    }

    private static char closingBracket(char openingBracket) {
        switch (openingBracket) {
            case '(':
                return ')';
            case '[':
                return ']';
            case '{':
                return '}';
            default:
                return '\0';
        }
    }

    private static int getCount(String formula, int startIndex) {
        int count = 0;
        while (startIndex < formula.length() && Character.isDigit(formula.charAt(startIndex))) {
            count = count * 10 + (formula.charAt(startIndex++) - '0');
        }
        return count == 0 ? 1 : count;
    }

    private static boolean isValidFormula(String formula) {
        // Perform basic validation
        int brackets = 0;
        for (char ch : formula.toCharArray()) {
            if (ch == '(' || ch == '[' || ch == '{') {
                brackets++;
            } else if (ch == ')' || ch == ']' || ch == '}') {
                brackets--;
            }
            if (brackets < 0) {
                return false; // More closing brackets than opening brackets
            }
        }
        return brackets == 0; // Balanced brackets
    }
}
