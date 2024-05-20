import java.util.InputMismatchException;
import java.util.Scanner;

public class Today0520 {
    static Scanner scan = new Scanner(System.in);

    public void array() {
        Scanner scan = new Scanner(System.in);
        String[][] arr = new String[6][6];

        int rowNum; //행
        int colNum; //열
        while (true) {
            try {
                System.out.print("row 좌표 1~4 : ");
                rowNum = scan.nextInt();

                System.out.print("col 좌표 1~4 : ");
                colNum = scan.nextInt();

                if (rowNum < 0 || rowNum > 4 || colNum < 0 || colNum > 4) {
                    System.out.println("잘못된 범위 입니다.");
                } else {
                    break;
                }
            } catch (InputMismatchException e) {
                System.out.println("잘못된 입력입니다.");
                scan.next(); // Use scan.next() to consume the invalid input
            }
        }

        arr[rowNum][colNum] = "X";
        System.out.println("  0 1 2 3 4");

        for (int row = 0; row < arr.length; row++) {
            System.out.print(row + " ");

            for (int col = 0; col < arr[row].length; col++) {
                if (arr[rowNum][colNum].equals(arr[row][col])) {
                    arr[row][col] = "X";
                } else {
                    arr[row][col] = " ";
                }
                System.out.print(arr[row][col] + " ");
            }
            System.out.println();
        }
    }
    public static void main(String[] args) {
        Today0520 td = new Today0520();
        td.array();
    }
}
