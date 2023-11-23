import java.util.Arrays;
import java.util.Scanner;

class Seat {

    public String[] seat;   //좌석 배열 생성.

    // 생성자 인스턴스 시 기본 출력
    public Seat() {
        seat = new String[10];

        for (int i = 0; i < seat.length; i++) {
            seat[i] = "---";
        }
    }

    // 좌석 설정시 입력
    public void seatInsert(int num, String name) {
        seat[num - 1] = name;
    }

    // 입력된 모든 출력
    public void seatView() {
        for (int i = 0; i < seat.length; i++) {
            System.out.print(seat[i] + " ");
        }
        System.out.println();
    }

    // 좌석 재설정 (취소)
    public boolean reSeat(String name) {

        for (int i = 0; i < seat.length; i++) {
            if (name.equals(seat[i])) {
                seat[i] = "---";
                return true;
            }
        }
        return false;
    }
}

public class Reservation {
    static Scanner scan = new Scanner(System.in);
    private Seat[] seat; //Seat class 배열 설정.
    private String[] rank = {"A", "B", "C"}; // 좌석 등급 배열 설정.

    //생성자 인스턴스 시 기본 출력.
    public Reservation() {
        seat = new Seat[3];
        for (int i = 0; i < seat.length; i++) {
            seat[i] = new Seat();   // 3개의 좌석 만큼 인스턴스.
        }
    }

    //예약 메소드
    public void reserve() {
        System.out.print("좌석 예약 시스템 >> A(1) B(2) C(3)");
        int num = scan.nextInt();

        System.out.print(rank[num - 1] + ">>"); // A B C 중 rank 출력
        seat[num - 1].seatView(); // 랭크 에 맞게 3개의 seat class 중 지정된 클래스 의 배열 출력.

        System.out.print("예약자 성함 : ");
        String name = scan.next();

        System.out.print("예약 위치 1 ~ 10");
        int k = scan.nextInt();
        seat[num - 1].seatInsert(k, name);
    }

    //예약 확인 메소드
    public void chack() {
        for (int i = 0; i < seat.length; i++) {
            System.out.print(rank[i] + " ");
            seat[i].seatView();
        }
        System.out.println();
    }

    //예약 취소 메소드
    public void cansel() {
        System.out.print("좌석 취소>> A(1) B(2) C(3)");
        int num = scan.nextInt();

        System.out.print(rank[num - 1] + " ");
        seat[num - 1].seatView();


        System.out.print("예약 자 의 성함 :");
        String name = scan.next();

        boolean result = seat[num - 1].reSeat(name);
        if (result == true)
            System.out.print("취소를 완료 하였습니다.");
         else
            System.out.print("존재하지 않는 이름입니다.");
    }

    public void run() {
        int index;

        while (true) {
            System.out.println("예약1 , 조회:2 , 취소:3 , 종료:4");
            index = scan.nextInt();
            switch (index) {
                case 1:
                    reserve();
                    break;
                case 2:
                    chack();
                    break;
                case 3:
                    cansel();
                    break;
                case 4:
                    return;
            }
        }
    }
}

class Main {
    public static void main(String[] args) {
        Reservation rs = new Reservation();
        rs.run();
    }
}
