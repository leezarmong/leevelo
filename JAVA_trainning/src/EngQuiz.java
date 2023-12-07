import java.util.Scanner;
import java.util.Vector;

class Word { //vector 에 제네릭 으로 들어갈 class
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
    Scanner scan = new Scanner(System.in);
    Vector<Word> ve = new Vector<>();

    public EngQuiz(){   // vector 에 인스턴스 시에 기본 생성자.
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

    public void insert(){

        System.out.println("영단 어와 뜻 을 입력해 주세요. exit >> '그만'");

        while(true){
            System.out.println("영단어 와 뜻 ex) 'man 남자'");
            String eng = scan.next();

            if(eng.equals("그만")){
                break;
            }

            String kor = scan.next();

            for(Word word : ve){     //중복된 단어 필터.
                if(word.getEng().equals(eng)){
                    System.out.println("이미 등록된 단어 입니다.");
                }
            }
            ve.add(new Word(eng,kor));

        }

    }

}
