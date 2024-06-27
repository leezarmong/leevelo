import java.util.Scanner;

public class PascalsTriangle {

    public static void main(String[] args) {


        int[][] triangle = new int[7][7];

        for (int i = 0; i < triangle.length; i++) {
            for (int j = 0; j <= i; j++) {
                if (j == 0 || j == i) { //첫번 째 행 과 마지막

                    /*
                     1                Row 0
                    1 1              Row 1
                   1 2 1            Row 2
                  1 3 3 1          Row 3
                 1 4 6 4 1        Row 4
                    *
                    * */
                    triangle[i][j] = 1;
                } else {
                    triangle[i][j] = triangle[i-1][j-1] + triangle[i-1][j];

                    /*
                    * **삼각형[4][2]**은 다음의 합:
                        삼각형[3][1] (3개)
                        삼각형[3][2] (3개)
                        따라서 삼각형[4][2] = 삼각형[3][1] + 삼각형[3][2] = 3 + 3 = 6
                    *
                    * */
                }
            }
        }

        for (int i = 0; i < triangle.length; i++) {
            // 삼각형 모형 교정
            for (int k = triangle.length; k>=i; k--){
                System.out.print(" ");
            }


            for (int j = 0; j <= i; j++) {
                System.out.print(triangle[i][j] + " ");
            }
            System.out.println();
        }


    }
}
