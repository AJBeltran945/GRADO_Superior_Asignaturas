package Programacion.CodeWars.RandomKatas;

public class CW20binaryAddition {
    public static String binaryAddition(int a, int b){
        int sum = a +b; //adds the 2 numbers and puts it invariable
        
        //condicion to return 1 or 0 if the add is 1 or 0
        if (sum == 1){
          return String.valueOf(sum);
        }else if (sum == 0){
          return String.valueOf(sum);
        }
        
        //inistilize all the variables taht we need
        String result = "";
        String stringBin = "";
        
        //convert the sum number to binary and stores it to a string
        //but inverted
        while(sum> 0){
          int binario = sum % 2;
          sum /= 2;
          stringBin += String.valueOf(binario);
        }
        
        // we would get the length of the string for the loop later
        int length = stringBin.length()-1;
        
        // this loop will get the last character of the string and the add it to
        // the variable result wich is a string also
        for (int i =length; i>=0; i--){
          char ch = stringBin.charAt(i);
          result += ch;
        }
        
        return result;
      }
}
