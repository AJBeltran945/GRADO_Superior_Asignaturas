package Programacion.CodeWars.RandomKatas;

public class CW29rot13 {
    public static void main(String[] args) {
        String phrase = "Hello World!";
        String result = rot13(phrase);
        System.out.println(result);
    }

    public static String rot13(String message) {
        String result = "";
        boolean noAlpha = true;

        char[] alphabetArray = new char[52];
        alphabetArray = mkAlpha(alphabetArray);

        for (int i= 0; i < message.length(); i++){
            char ch = message.charAt(i);
            for(int j= 0; j < alphabetArray.length; j++){
                if (ch == alphabetArray[j]){
                    if (j < 13){
                        result += alphabetArray[j+13];
                        noAlpha = false;
                        break;
                    }else if (j >= 13 && j<26){
                        result += alphabetArray[j-13];
                        noAlpha = false;
                        break;
                    } else if (j >= 26 && j<39){
                        result += alphabetArray[j+13];
                        noAlpha = false;
                        break;
                    }else if (j >= 39 && j<52){
                        result += alphabetArray[j-13];
                        noAlpha = false;
                        break;
                    }
                }
            }
            if (noAlpha){
                result += ch;
            }
            noAlpha = true;
        }

        return result;
    }

    public static char[] mkAlpha(char[] array) {
        int index = 0;
        for (char i = 'A'; i <= 'Z'; i++) {
            array[index] = i;
            index++;
        }
        for (char i = 'a'; i <= 'z'; i++) {
            array[index] = i;
            index++;
        }
        return array;
    }

}
