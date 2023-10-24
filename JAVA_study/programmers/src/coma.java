import java.util.Scanner;

public class coma {

    public static boolean exception(String str){

        for( char c : str.toCharArray()){
            if(c<'0' && c>'9'){
                return false;
            }
        }
        return true;
    }

    public static String comaTest(String str){
        int len = str.length();
        int count = 0 ;

        StringBuilder result = new StringBuilder();


        for(int i = len-1; i>=0; i--){

            result.insert(0, str.charAt(i));
            count ++;

            if(count %3==0 && i>0){
                result.insert(0,",");
            }
        }

        return result.toString();
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("숫자 입력 :");
        String n = scan.nextLine();

        if(!exception(n)){
            System.out.print("숫자가 아닙니다. ");

            return;
        }

        String result =comaTest(n);

        System.out.print(result);
    }


}
