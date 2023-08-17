import java.util.Scanner;

public class Star {
// for 문 이론 기초 연습 .
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("몇개 의 별 만들까? :");
        int n = scan.nextInt();

        for(int i = 0 ; i<n ; i++){
            for(int j = 0 ; j<=i; j++){
                System.out.print("*");
            }
            System.out.println();
        }

    }
}
