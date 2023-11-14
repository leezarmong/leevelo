import java.util.Scanner;

public class Comma {

    public static boolean chack(String str){

        for(char c : str.toCharArray()){
            if(c <'0' || c >'9'){

                return false;
            }
        }
        return true;
    }

    public static String comma(String str){

        StringBuffer result = new StringBuffer();
        int len = str.length();
        int count =0 ;

        for(int i = str.length()-1; i>=0; i--) {

            result.insert(0, str.charAt(i));
            count++;

            if (count % 3 == 0 && i > 0) {
                result.insert(0, ",");
            }
        }
        return result.toString();
    }

    public static void main(String[] args) {

     Scanner scan = new Scanner(System.in);
     System.out.print("insert number :");
     String k = scan.next();

     if(!chack(k)){
         System.out.print("잘못된 범위 입니다.");
         return;
     }

     String result = comma(k);
     System.out.print(result);

    }
}
