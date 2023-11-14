import java.util.InputMismatchException;
import java.util.Random;
import java.util.Scanner;

public class 카드번호 {

    public static void run() {
        Scanner scan = new Scanner(System.in);
        Random rn = new Random();

        int k = rn.nextInt(100);
        System.out.println(k + "수를 결정하였습니다. 맞추어 보세요");
        System.out.println("0-99");

        int i = 1;
        while (true) {
            System.out.print(i + ">> ");
            int num = 0;

            try {
                num = scan.nextInt();
            } catch (InputMismatchException e) {
                System.out.println("숫자를 입력해주세요");
                scan.next(); // 잘못된 입력 소비
                continue; // 반복문 재시작
            }

            if (k > num) {
                System.out.println("더 높게");
            } else if (k < num) {
                System.out.println("더 낮게");
            } else {
                System.out.println("맞았습니다.");
                break;
            }

            i++;
        }
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        while (true) {
            run();

            while (true) {
                System.out.print("다시 하시겠습니까? (y/n)");
                String k = scan.next();

                if (k.equals("y")) {
                    System.out.println("수를 결정하였습니다. 맞추어 보세요");
                    System.out.println("0-99");
                    break;
                } else if (k.equals("n")) {
                    System.exit(0);
                } else {
                    System.out.print("잘못된 입력입니다. ");
                }
            }
        }
    }
}
