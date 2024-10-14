package Test;

import java.util.Arrays;
import java.util.Scanner;

public class Cordinate {



    public void ready (){
        Scanner scan = new Scanner(System.in);
        String[][] arr = new String[6][6];

        System.out.print("가로: 1~4");
        int rowNum = scan.nextInt();

        System.out.print("세로: 1~4");
        int colNum = scan.nextInt();


        arr[rowNum][colNum] = " ";
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


    public int num ( int num){

        String[] str = String.valueOf(num).split("");
        Arrays.sort(str);



        String index = "";
        for(String k : str){
            index += k;
        }

        StringBuilder sb = new StringBuilder(index.toString());
        sb.reverse();


        int result = Integer.parseInt(sb.toString());


        return 0 ;
    }

public int rever ( int num){
        int result = 0 ;

        while(num != 0 ){
            int digit = result% 10;
            result = result*10 + digit;
            num /= 10;

        }

        return result;
}
}
