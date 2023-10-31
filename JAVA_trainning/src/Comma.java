import java.util.Scanner;

public class Comma {

    public static boolean excaption(String str){

        for(char c : str.toCharArray()){
            if(c<'0' || c>'9'){
                return false;
            }
        }
        return  true;
    }

    public static String commaing(String str){
        int len = str.length();
        int count =0;

        StringBuffer result =new StringBuffer();
        for(int i = len-1; i>=0;i--){

            result.insert(0,str.charAt(i));
            count ++;

            if(count %3==0 && i>0){
                result.insert(0,",");
            }
        }
        return result.toString();
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("번호 입력해줏에ㅛ :");
        String k = scan.nextLine();

        if(!excaption(k)){
            System.out.print("번호 입력햊수에ㅛ..");
            return ;
        }

        String result = commaing(k);
        System.out.print(result);
    }

}
