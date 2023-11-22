import java.util.HashSet;
import java.util.InputMismatchException;
import java.util.Scanner;

class User {
    static Scanner scan = new Scanner(System.in);
    String name;
    String word;

    //이름 메소드
    public void userName() {
        System.out.print("이름 입력 해 주세요 :");
        name = scan.next();
        this.name = name;
    }

    //단어 메소드
    public void userWord() {
        System.out.print(name+" 단어를 입력해 주세요 :");
        word = scan.next();
        this.word = word;
    }

    //단어 체크 메소드
    public boolean chackWord(String wording) {
        int len = wording.length() - 1; // 길이의 마지막 글짜
        char lastChar = wording.charAt(len); // 마지막 글짜
        char firstChar = word.charAt(0); // 첫 글짜

        // 마지막 글짜와 첫 글짜 가 같으면.
        if (lastChar == firstChar) {
            return true;
        }
        return false;
    }
}

public class Tester {
    static Scanner scan = new Scanner(System.in);

    public static void run() {

        int index = 0;
        while (true) {    //인원 설정 while
            System.out.print("몇명 참가 하실건가요? 2~5");

            try {   // 숫자 외에 exception 발생 할경우.
                index = scan.nextInt();

                if (index >= 2 && index <= 5) {
                    break;  //알맞는 인원이 입력된 경우 while 문을 벗어나서 실행하게 됨.
                } else {
                    System.out.print("2~5 명으로 정해 주세요.");
                }
            } catch (InputMismatchException e) {
                System.out.print("잘못된 입력입니다.");
                scan.nextInt();
            }
        }

        User[] user = new User[index]; // index 만큼 만들어진 User class

        for (int i = 0; i < index; i++) {
            user[i] = new User(); // 인스턴스.
            user[i].userName(); // 객체 만큼 userName 설정.
        }

        //제시어 설정.
        System.out.print("제시어는 아이폰 입니다.");
        String wording = "아이폰";

        HashSet<String> repeated = new HashSet<>(); // 중복된 단어 찾는 컬렉션.

        int i = 0;
        while (true) {
            user[i].userWord();

            if (repeated.contains(user[i].word)) { // 유효성 검사.
                System.out.print(user[i].name + "가 중복된 단어를 사용 했습니다.");
                break;

            } else if (!user[i].chackWord(wording)) {
                System.out.print(user[i].name + "가 졌습니다.");
                break;
            }

            repeated.add(user[i].word); // 중복단어 체크 컬렉션에 단어 추가
            wording = user[i].word; // 아버지 단어 뒤를 이을 단어로 초기화.

            i++; //while 증가값.
            if (i == index) { //i 와 index 가 같다면 차례가 된것으로 0 으로 초기화.
                i = 0;
            }
        }
    }

    public static void main(String[] args) {

        while (true) {
            try {
                run(); // 게임 진행

                while (true) { // 게임을 계속하는 지 판별
                    System.out.print("게임을 다시 하시겠습니까(네/아니오)>>");
                    String restart = scan.next();

                    if (restart.equals("네")) {
                        System.out.println("끝말잇기 게임을 시작합니다...");
                        break; // 안쪽 while문을 빠져나가 바깥쪽 while문 진행
                    } else if (restart.equals("아니오")) {
                        System.out.println("끝말잇기 게임을 종료합니다...");
                        System.exit(0); // 시스템 종료
                    } else {
                        System.out.println("잘못된 입력입니다.");
                        continue; // 안쪽 while문 진행
                    }
                }
            } catch (InputMismatchException e) { // 참가 인원 입력값이 숫자가 아닐 경우
                System.out.println("잘못된 입력입니다.");
                scan.nextLine(); // 입력값 clear
                continue; // 바깥쪽 while문 진행
            }
        }
    }
}
