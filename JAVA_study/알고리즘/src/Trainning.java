import java.util.InputMismatchException;
import java.util.Scanner;

class User {
    protected String User;
    protected String word;

    //user name 생성자
    public User(String User) {
        this.User = User;
    }

    //user return
    public String getUser() {
        return getUser();
    }

    // 입력받은 단어 사용.
    public void CreateWord() {
        Scanner scan = new Scanner(System.in);

        System.out.print("단어 입력 해주세요:");
        word = scan.next();
        this.word = word;
    }

    //앞글자 뒷글자 체크
    public boolean CheckWord(String str) {
        int wordlen = str.length() - 1;
        char lastword = str.charAt(wordlen);
        char firstword = word.charAt(0);

        if (lastword == firstword) {
            return true;
        }
        return false;
    }
}

public class Trainning {
    static Scanner scan = new Scanner(System.in);

    public static void run() {

        System.out.print("몇명 참가 하시나요? 1~5");
        int num = scan.nextInt();

        User[] user = new User[num];

        for (int i = 0; i < num; i++) {
            System.out.print("유저 이름 입력해 주세요.");
            String name = scan.next();

            //입력된 값 생성자 에 입력.
            user[i] = new User(name);
        }

        System.out.print("제시 어는 아버지 입니다.");
        String str = "아버지";

        //진행 순
        int i = 0;
        while (true) {
            user[i].CreateWord();

            if (!user[i].CheckWord(str)) {
                System.out.print(user[i].getUser() + "님이 탈락하셨습니다.");
                break;
            }

            str = user[i].word;

            //while 증가 값
            i++;
            if (i == num) {
                i = 0;
                //마지막 순서 까지 오면 0번부터 다시.
            }
        }
    }
    public static void main(String[] args) {
        System.out.println("끝말잇기 게임을 시작합니다...");

        while(true) {
            try {
                run(); // 게임 진행

                while(true) { // 게임을 계속하는 지 판별
                    System.out.print("게임을 다시 하시겠습니까(네/아니오)>>");
                    String restart = scan.next();

                    if(restart.equals("네")) {
                        System.out.println("끝말잇기 게임을 시작합니다...");
                        break; // 안쪽 while문을 빠져나가 바깥쪽 while문 진행
                    }
                    else if(restart.equals("아니오")) {
                        System.out.println("끝말잇기 게임을 종료합니다...");
                        System.exit(0); // 시스템 종료
                    }
                    else {
                        System.out.println("잘못된 입력입니다.");
                        continue; // 안쪽 while문 진행
                    }
                }
            }
            catch(InputMismatchException e) { // 참가 인원 입력값이 숫자가 아닐 경우
                System.out.println("잘못된 입력입니다.");
                scan.nextLine(); // 입력값 clear
                continue; // 바깥쪽 while문 진행
            }
        }
    }
}

