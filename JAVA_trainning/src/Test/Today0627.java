package Test;

public class Today0627 {


    public void test() {

        int[][] trai = new int[7][7];

        for (int i = 0; i <trai.length; i++) {
            for (int j = 0; j <= i; j++) {

                if (j == 0 || j == i) {
                    trai[i][j] = 1;
                } else {

                    trai[i][j] = trai[i-1][j-1] + trai[i-1][j];
                }

            }
        }

        for (int i = 0; i <trai.length; i++) {

            // 삼각형 모형 교정
            for (int k = trai.length; k>=i; k--){
                System.out.print(" ");
            }


            for (int j = 0; j <= i; j++) {
                System.out.print(trai[i][j]+" ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        Today0627 td = new Today0627();
        td.test();
    }

}
