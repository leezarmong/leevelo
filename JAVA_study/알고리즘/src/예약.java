import java.util.Scanner;

class Seatt {
    private String seatt[];

    //생성자
    public Seatt() {
        seatt = new String[10];

        for (int i = 0; i < seatt.length; i++) {
            seatt[i] = "---";
        }
    }

    public void check() {
        for (int i = 0; i < seatt.length; i++) {
            System.out.print(seatt[i] + " ");
        }
        System.out.println();
    }

    public void insert(String name, int num) {
        seatt[num - 1] = name;
    }

    public boolean reInsert(String name) {

        for (int i = 0; i < seatt.length; i++) {
            if (name.equals(seatt[i])) {
                seatt[i] = "---";
            }
            return true;
        }
        return false;
    }

}

class application {
    static Scanner scan = new Scanner(System.in);
    Seatt[] s;
    String[] grade = {"A", "B", "C"};

    //생성자.
    public application() {
        s = new Seatt[3];
        for (int i = 0; i < s.length; i++) {
            s[i] = new Seatt();
        }
    }

    public void appling() {
        System.out.print("좌석 예약 A(1) B(2) C(3)");
        int grade = scan.nextInt();
        System.out.print(s[grade - 1] + ">>");
        s[grade - 1].check();

        System.out.print("예약 하실 분의 이름 : ");
        String name = scan.next();

        System.out.print("예약 하실 자리 1~10 : ");
        int num = scan.nextInt();
        s[grade - 1].insert(name, num);
    }

    // 예약 현황 .
    public void show() {

        //3개의 벼열을 돌려준다.
        for (int i = 0; i < s.length; i++) {

            //grade의 i번째 열을 보여준다.
            System.out.print(grade[i] + ">>");
            //for문 의 i 번째 출력.
            s[i].check();
        }
    }

    public void delete() {

        System.out.print("좌석 A(1) B(2) C(3)");
        int gra = scan.nextInt();
        System.out.print(grade[gra - 1]);
        s[gra - 1].check();

        System.out.print("삭제 하실 회원 이름");
        String name = scan.next();
        boolean result = s[gra - 1].reInsert(name);

        if (result == true) {
            System.out.print("삭제 되었습니다.");
        } else
            System.out.print("회원 정보가 없습니다.");
    }

    public void run() {

        while (true) {
            System.out.print("예약1 , 현황2 , 예약취소3 ,종료4");
            int result = scan.nextInt();
            switch (result) {
                case 1:
                    appling();
                    break;

                case 2:
                    show();
                    break;

                case 3:
                    delete();
                    break;
                case 4:
                    return;
            }
        }
    }
}

public class 예약 {
    public static void main(String[] args) {
        application al = new application();
        al.run();
    }
}
