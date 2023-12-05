import java.util.Scanner;
import java.util.Vector;

class Word {
    private String eng, kor;

    public Word(String eng, String kor) {
        this.eng = eng;
        this.kor = kor;
    }

    public String getEng() {
        return eng;
    }

    public String getKor() {
        return kor;
    }
}

public class EngQuiz {
    Vector<Word> ve = new Vector<>();
    Scanner scan = new Scanner(System.in);

    public EngQuiz() {
        ve.add(new Word("love", "사랑"));
        ve.add(new Word("animal", "동물"));
        ve.add(new Word("emotion", "감정"));
        ve.add(new Word("human", "인간"));
        ve.add(new Word("stock", "주식"));
        ve.add(new Word("trade", "거래"));
        ve.add(new Word("society", "사회"));
        ve.add(new Word("baby", "아기"));
        ve.add(new Word("honey", "꿀"));
        ve.add(new Word("dall", "인형"));
        ve.add(new Word("bear", "곰"));
        ve.add(new Word("picture", "사진"));
        ve.add(new Word("painting", "그림"));
        ve.add(new Word("fault", "오류"));
        ve.add(new Word("example", "보기"));
        ve.add(new Word("eye", "눈"));
        ve.add(new Word("statue", "조각상"));
    }

    public void run () {
        System.out.println("**** 영어 단어 테스트 프로그램 \"명품 영어\"입니다. ****");

        while(true){
            try {
                System.out.print("단어 테스트:1, 단어 삽입:2, 종료:3>> ");
                int input = scan.nextInt();


            }
            catch (Exception e){
                System.out.println("잘못된 입력입니다. ");
            }
        }

    }

}
