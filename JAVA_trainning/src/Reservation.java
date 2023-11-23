import java.util.Arrays;

class Seat {

    public String[] seat;

    // 생성자 인스턴스 시 기본 출력
    public Seat() {
        seat = new String[10];

        for (int i = 0; i < seat.length; i++) {
            seat[i] = "---";
        }
    }

    // 좌석 설정시 입력
    public void seatInsert(int num , String name){
        seat[num-1] = name;
    }

    // 입력된 모든 출력
    public void seatView(){
        for(int i=0; i<seat.length; i++){
            System.out.print(seat[i]+" ");
        }
        System.out.println();
    }

    // 좌석 재설정 (취소)
    public boolean reSeat(String name){

        for(int i=0; i<seat.length; i++){
            if(name.equals(seat[i])){
                seat[i]="---";
                return true;
            }
        }
        return false;
    }
}

public class Reservation {

}
