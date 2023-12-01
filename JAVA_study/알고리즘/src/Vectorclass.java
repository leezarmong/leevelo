import java.util.Scanner;
import java.util.Vector;

public class Vectorclass {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        Vector<Integer>nums = new Vector<>();

        System.out.println("정수 를 담아주세요 종료는 -1");

        int max = 0;
        while(true){
            int n = scan.nextInt();

            if(n == -1){
                break;
            }
            if(n > max){
                max = n;
            }

        }
        System.out.println("제일 큰 정수는 "+max+"입니다. ");
    }
}
