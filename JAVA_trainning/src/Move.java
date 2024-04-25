import java.util.Scanner;

public class Move {

    static Scanner scan = new Scanner(System.in);
    private String grade[];

    // Move class 생성자
    public Move() {
        grade = new String[10];

        for (int i = 0; i < grade.length; i++) {
            grade[i] = "---";
        }
    }

    // 좌석 현황 보기
    public void show() {
        for (int i = 0; i < grade.length; i++) {
            System.out.print(grade[i] = " ");
        }
        System.out.println();
    }

    //좌석 지정 하기
    public void set(String name , int num){
        grade[num-1] = name;
    }

}
