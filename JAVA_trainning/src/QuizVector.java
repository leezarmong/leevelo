import java.util.Scanner;
import java.util.Set;
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
    Vector<Nation> v = new Vector<>();

    public QuizVector() {
        v.add(new Nation("멕시코", "멕시코시티"));
        v.add(new Nation("스페인", "리스본"));
        v.add(new Nation("프랑스", "파리"));
        v.add(new Nation("영국", "런던"));
        v.add(new Nation("그리스", "아테네"));
        v.add(new Nation("독일", "베를린"));
        v.add(new Nation("일본", "도쿄"));
        v.add(new Nation("중국", "베이징"));
        v.add(new Nation("러시아", "모스크바"));
    }

    public boolean contains(String country) {

        for (int i = 0; i < v.size(); i++) {
            if (v.get(i).getCountry().equals(country)) {
                System.out.println("등록된 나라가 있습니다. !");
                return false;
            }
        }
        return true;
    }

    public void insert() {
        System.out.println("현재" + v.size() + "개 만큼 등록 되어있습니다.");

        for (Nation nation : v) {
            System.out.println(nation.getCountry() + " " + nation.getCapital());
        }

        while (true) {
            System.out.println("나라 와 수도 입력 해 주세요. ex) 대한민국 서울");
            String country = scan.next();   // 나라 입력
            String capital = scan.next();   // 수도 입력
            if (country.equals("그만")) {
                break;
            }

            if (!contains(country)) {
                continue;
            }

            v.add(new Nation(country, capital));
        }
    }

    public void delete() {
        System.out.println("현재" + v.size() + "개 만큼 등록 되어있습니다.");

        for (Nation nation : v)
            System.out.println(nation.getCountry() + " 나라 와 " + nation.getCapital() + " 수도가 있습니다.");

        System.out.println("지우고 싶은 나라를 입력 해 주세요.. [삭제 후'그만']");
        String deleteCountry = scan.next();
        if (deleteCountry.equals("그만")) {
            return;
        }

        boolean found = false;
        for (int i = 0; i < v.size(); i++) {
            if (v.get(i).getCountry().equals(deleteCountry)) {
                v.remove(i);
                found = true;
            }
        }
        if (!found) {
            System.out.println("그런 나라는 없습니다.");
        }
    }

    public void play() {

        while (true) {
        int index = (int) (Math.random() * v.size());
        Nation nation = v.get(index);
        String question = nation.getCountry();
        String answer = nation.getCapital();


            System.out.println(question + "의 수도는?");
            String capitalanswer = scan.next();


            if (capitalanswer.equals("그만")) {
                break;
            } else if (capitalanswer.equals(answer)) {
                System.out.println("정답입니다.");
            } else {
                System.out.print("틀렸습니다.");
            }
        }
    }

    public void run() {

        System.out.print("게임을 시작합니다.");
        while (true) {
            System.out.println("1.나라 등록 2.나라 삭제 3.게임 시작 4.종료");
            int k = scan.nextInt();

            switch (k) {
                case 1:
                    insert();
                    break;
                case 2:
                    delete();
                    break;
                case 3:
                    play();
                    break;
                case 4:
                    System.out.print("종료 합니다.");
                    return;
            }
        }
    }

    public static void main(String[] args) {
        QuizVector v = new QuizVector();

        v.run();
    }
}
