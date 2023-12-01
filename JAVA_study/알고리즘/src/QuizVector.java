import java.util.Random;
import java.util.Scanner;
import java.util.Vector;

class Nation {
    private String country, capital;

    public Nation(String country, String capital) {
        this.country = country;
        this.capital = capital;
    }

    public String getCountry() {
        return country;
    }

    public String getCapital() {
        return capital;
    }
}

public class QuizVector {
    Scanner scan = new Scanner(System.in);

    Vector<Nation> v = new Vector<Nation>();

    public QuizVector() {
        v.add(new Nation("멕시코", "멕시코시티"));
        v.add(new Nation("스페인", "리스본"));
        v.add(new Nation("프랑스", "파리"));
        v.add(new Nation("영국", "런던"));
        v.add(new Nation("그리스", "아테네"));
        v.add(new Nation("독일", "베를린"));
        v.add(new Nation("일본", "도쿄"));
        v.add(new Nation("중국", "베이찡"));
        v.add(new Nation("러시아", "모스크바"));
    }

    public boolean contains(String country) {

        for (int i = 0; i < v.size(); i++) {
            if (v.get(i).getCountry().equals(country)) {
                return false;
            }
        }
        return true;
    }

    public void insert() {
        System.out.print("현재" + v.size() + "개의 나라와 수도가 있습니다.");
        while (true) {
            System.out.println("나라 수도 입력 ex) 한국 서울");
            String country = scan.next();
            if (country.equals("그만")) {
                break;
            }
            String capital = scan.next();

            if (!contains(country)) {
                System.out.print(country + "이미 존재합니다.");
                continue;
            }
            v.add(new Nation(country, capital));
        }
    }

    public void play() {
        while (true) {
            int index = (int) (Math.random() * v.size()); // 랜덤한 위치 결정

            Nation nation = v.get(index);
            String question = nation.getCountry();
            String answer = nation.getCapital();

            System.out.print(question + "의 수도는?");

            String capitalanswer = scan.next();
            if (capitalanswer.equals("그만")) {
                break;
            } else if (capitalanswer.equals(answer)) {
                System.out.print("정답");
            } else {
                System.out.print("아닙니다.!");
            }
        }
    }

    public void run(){
        System.out.println("수도 맞추기 게임을 시작합니다.");

        while(true){
            System.out.println("새로 입력:1 게임시작:2 종료:3");
            int select = scan.nextInt();

            switch (select){
                case 1:
                    insert();
                    break;
                case 2:
                    play();
                    break;
                case 3:
                    System.out.println("종료합니다.");
                    return;
            }
        }
    }

    public static void main(String[] args) {
        QuizVector q = new QuizVector();
        q.run();
    }
}
