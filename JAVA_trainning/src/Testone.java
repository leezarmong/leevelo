import java.util.Scanner;

public class Testone {


    public static String num (String str){
        String result = "";
        int len= str.length();


        for(int i = 0 ;i<len -4; i++){
            result += "*";
            //마지막 4,3,2,1 의 4 번째 위치가 올때까지 * 을 하나씩 더해준다.
        }

        result += str.substring(str.length()-4);
        //그 갯수 만큼 substring  을 해서 -4 즉 4,3,2,1 의 자리를 붙여 준다.

        return  result;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("insert");
        String k = scan.nextLine();

        System.out.print(num(k));
    }
}
