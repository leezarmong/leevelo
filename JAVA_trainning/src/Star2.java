import java.util.Scanner;

public class Star2 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int[][] b = new int[5][];

        b[0] = new int[0];
        b[1] = new int[1];
        b[2] = new int[2];
        b[3] = new int[3];
        b[4] = new int[4];

        int count = 1;

        for (int i = 0; i < b.length; i++) {
            for (int j = b.length; j > i; j--) {
                System.out.print(" ");
            }

           b[i] = new int[i + 1]; // Correcting array initialization inside the loop

            for (int k = 0; k < b[i].length; k++) {
                b[i][k] = count++;
            }

            System.out.println();
        }

        for (int i = 0; i < b.length; i++) {
            for (int j = b.length; j > i; j--) {
                System.out.print(" ");
            }

            for (int k = 0; k < b[i].length; k++) {
                System.out.print(b[i][k] + " ");
            }
            System.out.println();
        }
    }
}
