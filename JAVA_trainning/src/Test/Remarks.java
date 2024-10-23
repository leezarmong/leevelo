package Test;


import java.util.HashSet;
import java.util.InputMismatchException;
import java.util.Scanner;

//플레이어 class
class Player {
    // Scanner (공용 스캐너 사용)
    static Scanner scan = new Scanner(System.in);

    // 전역변수 (플레이어의 이름과 단어)
    private String name;
    private String word;

    // 이름 설정
    public void setUserName() {
        System.out.print("user name: ");
        this.name = scan.next(); // this 사용 명확히
    }

    // 이름 반환
    public String getName() {
        return name;
    }

    // 단어 입력
    public void setWord() {
        System.out.print(name + " >> ");
        this.word = scan.next();
    }

    // 입력된 단어 반환
    public String getWord() {
        return word;
    }

    // 마지막 글자와 첫 글자 유효성 검사
    public boolean checkSuccess(String lastWord) {
        int lastIndex = lastWord.length() - 1;  // 마지막 인덱스
        char lastChar = lastWord.charAt(lastIndex); // 마지막 글자
        char firstChar = word.charAt(0); // 첫 번째 글자

        return lastChar == firstChar; // 일치 여부 반환
    }
}

// 끝말잇기 클래스
public class Remarks {
    // Scanner (공용 스캐너 사용)
    static Scanner scan = new Scanner(System.in);

    // 중복 단어 검사용 HashSet
    static HashSet<String> usedWords = new HashSet<>();

    // 게임 실행 메서드
    public static void run() {
        System.out.print("참가 인원: ");
        int num = scan.nextInt(); // 참가자 수 입력

        Player[] players = new Player[num]; // 참가자 배열 생성

        // 참가자 수만큼 이름 설정
        for (int i = 0; i < num; i++) {
            players[i] = new Player();
            players[i].setUserName();
        }

        // 시작 단어 설정
        System.out.println("시작 단어는 '아버지'입니다.");
        String lastWord = "아버지";

        int i = 0; // 참가자 순서 변수 초기화

        // 게임 루프 시작
        while (true) {
            players[i].setWord(); // 참가자 단어 입력

            // 입력 단어 중복 검사
            if (usedWords.contains(players[i].getWord())) {
                System.out.println("중복된 단어를 사용하여 " + players[i].getName() + "가 졌습니다.");
                break; // 게임 종료
            }

            // 첫 글자와 마지막 글자 유효성 검사
            if (!players[i].checkSuccess(lastWord)) {
                System.out.println(players[i].getName() + "가 졌습니다.");
                break; // 게임 종료
            }

            // 단어를 중복 검사 Set에 추가
            usedWords.add(players[i].getWord());

            // 마지막 단어 갱신
            lastWord = players[i].getWord();

            // 다음 참가자 순서로 이동
            i++;

            // 모든 참가자가 단어를 입력한 경우 순서 초기화
            if (i == num) {
                i = 0;
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