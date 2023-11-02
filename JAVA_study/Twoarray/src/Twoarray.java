import java.util.InputMismatchException;
import java.util.Scanner;

public class Twoarray {

    public void practice9() {
        Scanner sc = new Scanner(System.in);

        String[][] arr = new String[6][6];
        int rowNum ;
        int colNum ;

        while (true) {
            try {
                System.out.print("행 인덱스 입력 : ");
                rowNum = sc.nextInt();
                System.out.print("열 인덱스 입력 : ");
                colNum = sc.nextInt();

                if (rowNum < 0 || rowNum > 4 || colNum < 0 || colNum > 4) {
                    System.out.println("잘못 입력하셨습니다.");
                } else {
                    break; // 올바른 입력이 들어오면 루프를 종료합니다.
                }
            } catch (InputMismatchException e) {
                System.out.println("잘못된 입력 형식입니다. 정수를 입력해주세요.");
                sc.nextLine(); // 버퍼를 비워서 다음 입력을 받을 수 있도록 합니다.
            }
        }
        arr[rowNum][colNum] = "X";
        System.out.println("  0 1 2 3 4");
        for (int row = 0; row < arr.length-1 ; row++) {
            System.out.print(row + " ");
            for (int col = 0; col < arr[col].length-1 ; col++) {
                if (arr[row][col] == arr[rowNum][colNum]) {
                    arr[row][col] = "X";

            } else {
                    arr[row][col] = " ";
                }
                System.out.print(arr[row][col] + " ");
            }

            System.out.println();
        }

        sc.close();
    }

    public static void main(String[] args) {
        Twoarray tw = new Twoarray();
        tw.practice9();
    }
}


