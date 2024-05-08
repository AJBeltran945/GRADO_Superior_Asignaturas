package Programacion.OOP;

public class Austin {
    public static void main(String[] args) {
        int [] a ={10,15,3,8};
        int b = 17;
        boolean result=esSum(a,b);
        System.out.println(result);
    }

    static boolean esSum(int []list, int k){
        for(int i = 0; i<list.length; i++){
            int num1 = list[i];
            for(int j = 0; j<list.length;j++){
                int num2 = list[j];
                if (num1 + num2 == k){
                    return true;
                }
            }
        }
        return false;
    }
}
