import java.util.Arrays;
import java.util.Scanner;

public class JavaTest {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int[] t = {-1,-1,-1,-1};


        int k = (int)(Math.random()*4);
        int rand  = (int)(Math.random()*10);

        t[k]= rand;
        System.out.println(Arrays.toString(t));





    }
}
