package Programacion.CodeWars.RandomKatas;

public class CW27camelCase {
  public static String camelCase(String str) {
    String finalWord = "";

    String[] wordList = str.split(" ", 0);

    for (int i = 0; i < wordList.length; i++) {
      String word = wordList[i];
      for (int j = 0; j < word.length(); j++) {
        char ch;
        if (j == 0) {
          ch = word.charAt(j);
          String s = String.valueOf(ch);
          s = s.toUpperCase();
          finalWord += s;
          continue;
        }
        ch = word.charAt(j);
        finalWord += ch;
      }
    }

    return finalWord;
  }
}
