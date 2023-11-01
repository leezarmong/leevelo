import java.util.Arrays;

public class Trainning {

    public static int[] solution(long n ){


        String k = String.valueOf(n);
        int[] te = new int[k.length()];


        for(int i=0; i<te.length; i++){

            te[i]=Integer.parseInt(k.substring(te.length-1-i,te.length-i));

        }
        return te;
    }
    public static void main(String[] args) {

        long te = 123456;
        int[] arr = solution(te);
        System.out.print(Arrays.toString(arr));


    }
}
