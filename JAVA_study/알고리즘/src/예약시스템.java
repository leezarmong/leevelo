import java.util.Scanner;

// 좌석 관리 클래스
class Seat {
    private String seat[];

    /*
    * 처음에 Seat 객체가 생성될 때 seat 배열은 "10개의 좌석"으로 초기화되고, 모든 좌석은 "---"로 설정
    * */
    public Seat() { // 좌석 생성자
        seat = new String[10]; //10개의 좌석
        for(int i=0; i<seat.length; i++) {
            seat[i] = "---";
        }
    }

    public void Show() { // 좌석 상태 출력
        for(int i=0; i<seat.length; i++) {
            System.out.print(seat[i]+" ");
        }
        System.out.println();
    }

    /*
    *  예약이 발생하면 해당 좌석 번호에 해당하는 배열 요소에 예약된 이름으로 값을 설정
    * */
    public void Set(String name, int num) { // 예매된 좌석 정보 처리
        seat[num-1] = name;
    }

    /*
    * 취소가 발생하면 해당 이름과 일치하는 좌석이 있다면 그 좌석을 "---"로 다시 설정
    * */
    public boolean reSet(String name) { // 좌석 취소 정보 확인 후, 처리
        for(int i=0; i<seat.length; i++) {
            if(name.equals(seat[i])) {
                seat[i] = "---";
                return true;
            }
        }
        return false;
    }
}

//예약 클래스
class Reservation {
    Scanner sc = new Scanner(System.in);
    private Seat s[]; // 세개의 등급 당 좌석 생성
    private String seatGrade[] = {"S", "A", "B"}; // 좌석 등급별 이름

    public Reservation() {
        s  = new Seat[3];
        for(int i=0; i<s.length; i++) {
            s[i] = new Seat();
        }
    }

    public void Reserve() {
        System.out.print("좌석구분 S(1), A(2), B(3)>>");
        int grade = sc.nextInt();
        System.out.print(seatGrade[grade-1]+">>");
        s[grade-1].Show();

        System.out.print("이름>>");
        String name = sc.next();
        System.out.print("번호>>");
        int num = sc.nextInt();
        s[grade-1].Set(name, num);
    }

    public void Check() {
        for(int i=0; i<s.length; i++ ) {
            System.out.print(seatGrade[i]+">>");
            s[i].Show();
        }
        System.out.println("<<<조회를 완료하였습니다.>>>");
    }

    public void Cancel() {
        System.out.print("좌석 S:1, A:2, B:3>>");
        int grade = sc.nextInt();
        System.out.print(seatGrade[grade-1]+">>");
        s[grade-1].Show();

        System.out.print("이름>>");
        String name = sc.next();

        boolean result = s[grade-1].reSet(name);
        if(result==true)
            System.out.println("<<<취소를 완료하였습니다.>>>");
        else
            System.out.println("존재하지 않는 정보입니다.");
    }

    public void Run() {
        int option;
        while(true) {
            System.out.print("예약:1, 조회:2, 취소:3, 끝내기:4>>");
            option = sc.nextInt();

            switch(option) {
                case 1:
                    Reserve();
                    break;
                case 2:
                    Check();
                    break;
                case 3:
                    Cancel();
                    break;
                case 4:
                    return;
            }
        }
    }
}

public class 예약시스템 {
    public static void main(String[] args) {
        System.out.println("명품콘서트홀 예약 시스템입니다.");
        Reservation r = new Reservation();
        r.Run();
    }
}