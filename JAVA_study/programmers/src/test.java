import java.util.Scanner;

public class test {

    public int[] arr (int num){
        String k = String.valueOf(num);

        int[] result = new int[k.length()];

        for(int i = 0 ;i<result.length; i++){

            result[i] = Integer.parseInt(k.substring(result.length-1-i,result.length-i));

        }


        return result;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("unmeer");
        int k = scan.nextInt();

        test ts = new test();

        System.out.print(ts.arr(k));
    }
}
