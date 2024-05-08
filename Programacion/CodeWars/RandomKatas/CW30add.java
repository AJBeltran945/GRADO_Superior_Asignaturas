package Programacion.CodeWars.RandomKatas;

public class CW30add {
    public static void main(String[] args) {
        String a = "0000996661707089436506141460264048";
        String b = "65689517261376717805393335787";
        String result = add(a, b);
        System.out.println(result);
    }

    public static String add(String a, String b) {
        String result = "";
        String finalresult= "";
        String tempFinalresult = "";
        String  sMayor;
        int sum, menor, mayor;
        int count = 0;
        int divide = 0;

        if (a.length() < b.length()) {
            menor = a.length();
            mayor = b.length();
            sMayor= b;
        } else {
            menor = b.length();
            mayor = a.length();
            sMayor = a;
        }

        for (int i = 1; i <= menor; i++) {

            char ch1 = a.charAt(a.length() - i);
            char ch2 = b.charAt(b.length() - i);

            int num1 = Character. getNumericValue(ch1);
            int num2 = Character. getNumericValue(ch2);

            sum = num1 + num2;

            if (divide != 0) {
                sum += divide;
                divide = 0;
            }
            if (sum > 9) {
                divide = sum / 10;
                sum %= 10;
            }

            char num = Integer.toString(sum).charAt(0);
            result += num;
        }

        for(int i = menor+1 ; i <= mayor; i++){
            char ch = sMayor.charAt(sMayor.length()- i);

            int num = Character.getNumericValue(ch);

            if (divide != 0) {
                num += divide;
                divide = 0;
            }
            if (num > 9) {
                divide = num / 10;
                num %= 10;
            }

            char chnum = Integer.toString(num).charAt(0);
            result += chnum;
        }
        if (divide != 0) {
            char chnum = Integer.toString(divide).charAt(0);
            result += chnum;
            divide = 0;
        }

        for (int i = result.length() - 1; i >= 0; i--) {
            char ch = result.charAt(i);
            
            tempFinalresult += ch;
            if (divide != 0){
                char chnum = Integer.toString(divide).charAt(0);
                tempFinalresult += chnum;
                divide = 0;
            }
        }

        for(count = 0; count<tempFinalresult.length(); count++){
            char ch = tempFinalresult.charAt(count);
            if(ch == '0'){
                continue;
            }
            break;
        }

        for(int i = count; i<tempFinalresult.length(); i++){
            char ch = tempFinalresult.charAt(i);
            finalresult += ch;
        }        

        return finalresult;
    }
}
