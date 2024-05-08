package Programacion.CodeWars.RandomKatas;

public class CW31isMerge {
    public static void main(String[] args) {
        String a = "Aa+Sz,B=&3Wcu39I3u8W$RPL@Aa+Sz,B=&3W$C>]4oM+E*E<h?da\\![V6X@2_9!@+hx@\\v wL;d*YX";
        String b = "Aa+Sz,B=&3W$C>]4oM+E*E<h?da\\![V";
        String c = "Aa+Sz,B=&3Wcu39I3u8W$RPL@6X@2_9!@+hx@\\v wL;d*YX";
        Boolean result = isMerge(a, b, c);
        System.out.println(result);
    }

    public static boolean isMerge(String s, String part1, String part2) {
        Boolean result = false;
        part1 += part2;
        int count = 0;

        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            char ch1;

            for (int j = 0; j < part1.length(); j++) {
                ch1 = part1.charAt(j);
                if (ch == ch1) {
                    count++;
                    break;
                }
            }
        }

        if (count == s.length()) {
            result = true;
        }
        return result;
    }
}


// public static boolean isMerge(String s, String part1, String part2) {
//     if (s.isEmpty()) {
//         // If s is empty, check if both part1 and part2 are also empty
//         return part1.isEmpty() && part2.isEmpty();
//     }

//     if (!part1.isEmpty() && s.charAt(0) == part1.charAt(0)) {
//         // If the first character of s matches the first character of part1,
//         // recursively check if the rest of s can be formed from the rest of part1 and all of part2
//         if (isMerge(s.substring(1), part1.substring(1), part2)) {
//             return true;
//         }
//     }

//     if (!part2.isEmpty() && s.charAt(0) == part2.charAt(0)) {
//         // If the first character of s matches the first character of part2,
//         // recursively check if the rest of s can be formed from all of part1 and the rest of part2
//         if (isMerge(s.substring(1), part1, part2.substring(1))) {
//             return true;
//         }
//     }

//     // If none of the above conditions are met, s cannot be formed from part1 and part2
//     return false;
// }