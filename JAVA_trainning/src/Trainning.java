import java.util.Scanner;
import java.util.Vector;

class EngWord { // engword class
    private String eng, kor;

    public EngWord(String eng, String kor) {
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

public class Trainning {
    Scanner scan = new Scanner(System.in); // Scanner instance.
    Vector<EngWord> ve = new Vector<>(); // vector instance.

    //-----------------------------

    public Trainning(){
        ve.add(new EngWord("love", "사랑"));
        ve.add(new EngWord("animal", "동물"));
        ve.add(new EngWord("emotion", "감정"));
        ve.add(new EngWord("human", "인간"));
        ve.add(new EngWord("stock", "주식"));
        ve.add(new EngWord("trade", "거래"));
        ve.add(new EngWord("society", "사회"));
        ve.add(new EngWord("baby", "아기"));
        ve.add(new EngWord("honey", "꿀"));
        ve.add(new EngWord("dall", "인형"));
        ve.add(new EngWord("bear", "곰"));
        ve.add(new EngWord("picture", "사진"));
        ve.add(new EngWord("painting", "그림"));
        ve.add(new EngWord("fault", "오류"));
        ve.add(new EngWord("example", "보기"));
        ve.add(new EngWord("eye", "눈"));
        ve.add(new EngWord("statue", "조각상"));

    }

    public void insert () { // 새로운 단어 추가 작업.

        System.out.println(ve.size()+" 개 의 단어가 저장되어있습니다.");

        while(true){

            System.out.println("영 단어와 뜻을 같이 입력해주세요. ex) korea 대한민국 종료 > '그만'");
            String insertEng = scan.next();

            if(insertEng.equals("그만")){ //while stop
                break;
            }

            String insertKor = scan.next();

            for(EngWord engword : ve){  // 중복된 단어를 걸러내기 위한 for each
                if(engword.getEng().equals(insertEng)){

                    System.out.println("중복된 단어 입니다.");
                }
            }
            ve.add(new EngWord(insertEng,insertKor)); //  이상 없으면 add.

        }
    }

    public void delete() {  //단어 삭제.

        System.out.println(ve.size()+" 개의 단어가 저장되어있습니다.");

        while(true){

            System.out.println("종료 하고싶으면 '그만' 입력 해 주세요.");
            String deleteStr = scan.next();

            if(deleteStr.equals("그만")){ // while stop
                break;
            }

        }
    }

}
