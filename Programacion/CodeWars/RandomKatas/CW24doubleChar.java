package Programacion.CodeWars.RandomKatas;

public class CW24doubleChar {
    public static String doubleChar(String s){
        String result = "";
        for (int i = 0; i<s.length(); i ++){
          char ch = s.charAt(i);
          
          for (int j = 0; j < 2; j++){
            result += ch;
          }
        }
        
        return result;
      }
}
