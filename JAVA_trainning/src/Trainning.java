import java.util.Arrays;
import java.util.InputMismatchException;
import java.util.Scanner;

public class Trainning {


    public void practice9() {
        Scanner sc = new Scanner(System.in);

        String[][] arr = new String[6][6];
        int rowNum;
        int colNum;


        while (true) {
            System.out.println("1~4 의 범위 안으로 정해주세요.");

            try {

                System.out.print("행 인덱스 :");
                rowNum = sc.nextInt();

                System.out.print("열 인덱스 :");
                colNum = sc.nextInt();

                if (rowNum < 0 || rowNum > 4 || colNum < 0 || colNum > 4) {
                    System.out.println("1~4 의 번호 입력해주세요.");
                } else {
                    break;
                }
            } catch (InputMismatchException e) {
                System.out.println("정수 입력해주세요.");
                sc.nextInt();
            }
        }
        arr[rowNum][colNum] = "X";

        System.out.println("  0 1 2 3 4");
        for (int row = 0; row < arr.length - 1; row++) {
            System.out.print(row + " ");

            for (int col = 0; col < arr[col].length - 1; col++) {
                if (arr[row][col] == arr[rowNum][colNum]) {
                    arr[row][col] = "X";

                } else {
                    arr[row][col] = " ";
                }
                System.out.print(arr[row][col]+" ");
            }
            System.out.println();
        }

    }

    public static void main(String[] args) {
        Trainning tr = new Trainning();
        tr.practice9();
    }
}
