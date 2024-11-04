package Test;


import java.util.HashSet;
import java.util.Scanner;

// 참가자 인원 , 단어 I / O
class Word {

    private Scanner scan = new Scanner(System.in);
    private String user;
    private String word;

    //참가자
    public void setUser() {
        System.out.print("참가자 이름 :");
        this.user = scan.next();
    }

    public String getUser() {
        return user;
    }


    //단어 입력
    public void setWord() {
        System.out.print("단어 입력:");
        this.word = scan.next();
    }

    public String getWord() {
        return word;
    }


    //첫 글자와 마지막 글자
    public boolean checkSuccess(String inWord) {
        int wordLength = inWord.length();
        char lastWord = inWord.charAt(wordLength - 1);
        char firstWord = inWord.charAt(0);

        return lastWord == firstWord;
    }
}


public class Reword {
    static Scanner scan = new Scanner(System.in);
    static HashSet<String> wordInput = new HashSet<>();

    public static void run() {

        System.out.print("참가할 인원 :");
        int num = scan.nextInt();

        Word[] words = new Word[num];

        //참가자 입력 .
        for (int i = 0; i < num; i++) {
            words[i] = new Word();
            words[i].setUser();
        }


        // while 문 참가자 카운트
        System.out.print("제시어 는 아버지 입니다.>>");
        String inWord = "아버지";

        int i = 0;
        while (true) {
            words[i].setWord();

            if (wordInput.contains(words[i].getWord())) {
                System.out.print(words[i].getUser() + "가 중복된 단어를 사용하여 졌습니다. ㅠ");
                break;
            }

            if (!words[i].checkSuccess(inWord)) {
                System.out.print("틀렸음 XX");
                break;
            }

            wordInput.add(inWord);
            inWord = words[i].getWord();

            i++;

            //마이턴 초기화
            if (i == num) {
                i = 0;
            }
        }

    }


}
