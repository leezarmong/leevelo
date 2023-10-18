import java.util.Scanner;

public class test_name {


    public String nm (String k){
        String result = k;

        int len = result.length();

        if(len == 3){

            result = result.substring(0,1)+"*"+result.substring(2);
        }


        return result;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        test_name tn = new test_name();

        System.out.print("이름 : ");
        String k = scan.next();

        System.out.print((tn.nm(k)));
    }
}
