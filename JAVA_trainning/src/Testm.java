import java.util.Random;
import java.util.Scanner;

public class Testm {

    public static void main() {
        Scanner scan = new Scanner(System.in);
        String[] rp = {"가위", "바위", "보"};
        Random rn = new Random();
        int strikes = 0;
        int bases = 0;
        int points = 0;

        while (true) {
            System.out.print("유저 : 가위'1' 바위'2' 보'3' / 종료 '0' : ");
            int user = scan.nextInt();

            if (user == 0) {
                break;
            }

            if (user < 1 || user > 3) {
                System.out.println("잘못된 입력입니다.");
                continue;
            }

            user = user - 1;
            int computer = rn.nextInt(rp.length);

            System.out.println("사용자 선택: " + rp[user]);
            System.out.println("컴퓨터 선택: " + rp[computer]);

            if (user == computer) {
                System.out.println("비겼습니다.");
            } else if ((user == 0 && computer == 2) ||
                    (user == 1 && computer == 0) ||
                    (user == 2 && computer == 1)) {
                bases++;
                System.out.println("사용자가 이겼습니다!");

                if (bases == 4) {
                    points++;
                    bases = 0;
                    System.out.println("사용자가 홈을 밟았습니다! 1점 획득!");
                } else {
                    System.out.println("사용자가 " + bases + "루 진출!");
                }
            } else {
                strikes++;
                System.out.println("컴퓨터가 이겼습니다. 스트라이크 " + strikes + "개");
            }

            System.out.println("현재 스코어: 포인트 " + points + "점, 스트라이크 " + strikes + "개, " + bases + "루");

            if (strikes == 3) {
                System.out.println("3아웃! 게임 종료.");
                break;
            }
        }

        System.out.println("최종 현황판: 포인트 " + points + "점, 스트라이크 " + strikes + "개, " + bases + "루");
        scan.close();
    }

    public static void main(String[] args) {
        Testm.main();
    }
}
