import java.util.Arrays;
import java.util.Scanner;

public class ZackHol {

    public int[][] arra (int num){








        return new int[4][];
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int[] b = new int[4];

        System.out.println("배열에 입력 할 수. 4개 :");
        for(int i=0; i<b.length; i++){
            b[i]=scan.nextInt();
        }

        System.out.println(Arrays.toString(b));


    }
}
