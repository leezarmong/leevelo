import java.util.Scanner;

public class rever {
    public int test (int num){
        int result = 0 ;

        while(num != 0){
            int digit = num % 10;
            result = result * 10 +digit;

            num /= 10;
        }

        return result;
    }

    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);

        System.out.print("번호 입력 :");
        int i = scan.nextInt();

        rever re = new rever();

        System.out.print(re.test(i));
    }
}
