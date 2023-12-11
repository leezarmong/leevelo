

import java.util.Arrays;
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

    public Trainning() {
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

    public void insert() { // 새로운 단어 추가 작업.

        System.out.println(ve.size() + " 개 의 단어가 저장되어있습니다.");

        while (true) {

            System.out.println("영 단어와 뜻을 같이 입력해주세요. ex) korea 대한민국 종료 > '그만'");
            String insertEng = scan.next();

            if (insertEng.equals("그만")) { //while stop
                break;
            }

            String insertKor = scan.next();

            for (EngWord engword : ve) {  // 중복된 단어를 걸러내기 위한 for each
                if (engword.getEng().equals(insertEng)) {

                    System.out.println("중복된 단어 입니다.");
                }
            }
            ve.add(new EngWord(insertEng, insertKor)); //  이상 없으면 add.

        }
    }

    public void delete() {  //단어 삭제.

        System.out.println(ve.size() + " 개의 단어가 저장되어있습니다.");

        while (true) {

            System.out.println("종료 하고싶으면 '그만' 입력 해 주세요.");
            String deleteStr = scan.next();

            if (deleteStr.equals("그만")) { // while stop
                break;
            }

            boolean result = false; // 참과 거짓 boolean

            for (EngWord engword : ve) {
                if (engword.getEng().equals(deleteStr)) {
                    ve.remove(engword);
                    result = true; //조건이 충족되었을 경우  true
                }
            }

            if (result) { // false 로 선언 되어있지만 조건이 충족 되어있는 이상 true 를 유지하게 된다.
                System.out.println(deleteStr + "가 삭제 되었습니다.");
            } else {
                System.out.println(deleteStr + "라는 단어는 없습니다.");
            }
        }
    }

    public void play() {

        while(true) {
            int[] arra = {-1, -1, -1, -1}; // 배열의 랜덤 값 -1 로 초기화
            int arraRan = (int) (Math.random() * 4);   // 배열의 인덱스 위치 랜덤 값. 0~3
            int vectorRan = (int) (Math.random() * ve.size()); // vector 의 랜덤 값.

            arra[arraRan] = vectorRan; // arra 배열의 랜덤 인덱스에 삽입될 vector의 사이즈.

            System.out.println(ve.get(vectorRan).getEng() + "?");

            for (int i = 0; i < arra.length; i++) {

                if (arra[i] != -1 || arra[i] == arraRan) {
                    continue;   //이미 정답은 지정 되어있음, 그러니 -1 이 아닐테고. for문을 돌렸을때 정답이 정해진 인덱스와 같을경우 continue 를 하여
                                // 이 두개중 한개가 참일경우 나머지 인덱스에 오답을 insert하게 된다.
                } else {
                    int tempRan = (int) (Math.random() * ve.size());
                    for (int j = 0; j < i; j++) {

                        if (tempRan == arra[j] ) {
                            j--;
                            tempRan = (int) (Math.random() * ve.size());

                        }
                    }
                    arra[i] = tempRan;
                    System.out.println(Arrays.toString(arra));
                }
            }
            for (int j = 0; j < arra.length; j++) {
                System.out.print("(" + (j + 1) + ")" + ve.get(arra[j]).getKor());
            }

            System.out.println(":>");
            int insertNum = scan.nextInt();

            if (insertNum == (arraRan + 1)) {
                System.out.println("정답힙니다.");
            } else if (insertNum == -1) {
                break;
            }
            else{
                System.out.println("틀렸습니다.");
            }
        }
    }

    public void run() {

        System.out.println("영단어 퀴즈 입니다.");

        while (true) {
            System.out.println("1.퀴즈 시작  2.단어 추가  3.단어 삭제  4.게임 종료");
            int k = scan.nextInt();

            switch (k) {
                case 1:
                    play();
                    break;
                case 2:
                    insert();
                    break;
                case 3:
                    delete();
                    break;
                case 4:
                    return;
            }
        }
    }

    public static void main (String[] args){
        Trainning tr = new Trainning();

        tr.run();
    }
}
