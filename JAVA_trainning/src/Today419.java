import java.util.Arrays;
import java.util.Scanner;

public class Today419 {

    public int[] maxmin(int[] array) {

        int[] result = new int[2];

        int max = array[0];
        int min = array[0];

        for (int i = 0; i < array.length; i++) {
            max = Math.max(array[i], max);
            min = Math.min(array[i], min);
        }

        result[0] = max;
        result[1] = min;

        return result;
    }


    // length 의 길이를 알아보자.
    public int strLength(String k){

        int count = 0 ;
        for(int i=0; i<k.length(); i++){

            char c = k.charAt(i);
            count++;
        }

        return count;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println("배열의 크기를 정해주세요.");
        int n = scan.nextInt();

        int[] b = new int[n];

        System.out.println("배열에"+n+"만큼 수를 입력해주세요."+"\n");
        for(int i=0; i<b.length; i++){
            System.out.print(i+1+"번째 :");
            b[i] = scan.nextInt();
        }
        Arrays.sort(b);

        System.out.println("배열에 담긴 수는");
        for(int i=0; i<b.length; i++){
            System.out.print(b[i]+" ");
        }

        Today419 td = new Today419();
        String k = "show33333";
        int i =td.strLength(k);
        System.out.print(i);
    }
}
