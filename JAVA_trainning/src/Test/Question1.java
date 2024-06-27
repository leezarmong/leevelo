package Test;

import java.util.Random;

public class Question1 {
    public static void main(String[] args) {
        int n = 5;
        int[][] magicSquare = new int[n][n];

        // Initialize position for 1
        int i = n / 2;
        int j = n - 1;

        // One by one put all values in the magic square
        for (int num = 1; num <= n * n; ) {
            if (i == -1 && j == n) { // 3rd condition
                j = n - 2;
                i = 0;
            } else {
                // 1st condition helper if next number goes to out of square's right side
                if (j == n) {
                    j = 0;
                }
                // 1st condition helper if next number goes to out of square's upper side
                if (i < 0) {
                    i = n - 1;
                }
            }

            if (magicSquare[i][j] != 0) { // 2nd condition
                j -= 2;
                i++;
                continue;
            } else {
                // Add the number to the magic square
                magicSquare[i][j] = num++;
            }

            j++;
            i--;
        }

        // Print the magic square
        System.out.println("The Magic Square for n=" + n + ":");
        System.out.println("Sum of each row or column: " + n * (n * n + 1) / 2 + "\n");
        for (i = 0; i < n; i++) {
            for (j = 0; j < n; j++) {
                System.out.print(magicSquare[i][j] + "\t");
            }
            System.out.println();
        }
    }
}